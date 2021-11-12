from io import BytesIO
import sys, os
import subprocess

dtor_idx = 2 # vt index of the class' dtor
asm_dir = "asm"
dest_dir = "src/auto"

xref_func_pairs = []

class VTInfo:
    vt_addr = 0
    dtor_addr = 0

    def __init__(self, vt_addr, dtor_addr):
        self.vt_addr = vt_addr
        self.dtor_addr = dtor_addr

    def __str__(self):
        return f"vt_addr: {hex(self.vt_addr)}, dtor_addr: {hex(self.dtor_addr)}"

def vaddr_to_off(vaddr):
    return vaddr - 0x08000000

def off_to_vaddr(vaddr):
    return vaddr + 0x08000000

def read_fn_pools(rom, map, vts_start, vts_end):
    literal_pool_rom_addrs = []
    in_text_section = False

    lines = map.readlines()

    for i in range(len(lines)):
        line = lines[i]

        if line.startswith(' .text'):
            in_text_section = True
        elif line.startswith(' .data') or line.startswith(' .bss'):
            in_text_section = False

        if in_text_section and len(line.split()) == 2 and line.split()[0].startswith('0x'):
            fn_name = line.split()[1]
            vaddr = int(line.split()[0], 16)
            vaddr_next_fn = vaddr + 1
            j = i
            while True:
                j += 1
                if j >= len(lines):
                    vaddr_next_fn = vaddr + 1 # oh well
                    break
                if len(lines[j].split()) != 0 and lines[j].split()[0].startswith('0x'):
                    vaddr_next_fn = int(lines[j].split()[0], 16)
                    break

            for k in range(vaddr, vaddr_next_fn, 4):
                off = vaddr_to_off(k)
                pointer = int.from_bytes(rom[off:off+4], 'little')
                if (vaddr_to_off(pointer) >= vts_start and vaddr_to_off(pointer) < vts_end):
                    xref_func_pairs.append((pointer, vaddr, fn_name))
                    if pointer not in literal_pool_rom_addrs:
                        literal_pool_rom_addrs.append(pointer)
    return literal_pool_rom_addrs


def read_all_vts(rom, xrefs, vts_start, vts_end):
    vtables = []
    for off in range(vts_start, vts_end, 8):
        vaddr = off_to_vaddr(off)
        if vaddr in xrefs:
            dtor_vaddr = int.from_bytes(rom[off + (dtor_idx * 4):off + (dtor_idx * 4 + 4)], 'little')
            inf = VTInfo(vaddr, dtor_vaddr)
            vtables.append(inf)
            #print(inf)

    return vtables

def mangle_vt(struct_name):
    return f"_vt.{len(struct_name)}{struct_name}"

def mangle_func(struct_name, func_name):
    return f"{func_name}__{len(struct_name)}{struct_name}"

def create_tu(struct_name, fns):
    decs = ""
    asm_funcs = ""
    for fn in fns:
        decs += f"    virtual void {fn}();\n"
        asm_funcs += f"ASM_FUNC(\"{asm_dir}/non_matching/{struct_name}/{fn}.inc\", void {struct_name}::{fn}())\n"

    tu_string = f"""\
#include "global.h"

struct {struct_name} {{
    {struct_name}();
    virtual ~{struct_name}();

{decs}
}};

{asm_funcs}
"""

    if os.path.exists(dest_dir) == False:
        os.makedirs(dest_dir)

    with open(f"{dest_dir}/{struct_name}.cpp", "w") as f:
        f.write(tu_string)

def extract_asm():
    # asms = os.listdir(f"{asm_dir}/")
    # for asm in asms:
    #     lines = open(f"{asm_dir}/{asm}", "r").readlines()
    #     for i in range(len(lines)):
    #         line = lines[i]
    #         if line.startswith("thumb_func_start"):
    #             fn_name = line.split()[1]
    #             if fn_name in fns:
    #                 # if the function is one that ref'd a different vt, stop here
    #                 while line.split()[1] in fns or line.split()[1] not in vts:
    #                     i += 2 # skip directives
    #                     with open(f"{asm_dir}/non_matching/{struct_name}/{fn_name}.inc", "w") as inc:
    #                         while lines[i].startswith("thumb_func_start") == False:
    #                             inc.write(f"{lines[i]}")
    #                             i += 1

    #                             if lines[i].startswith("thumb_func_end"):
    #                                 i += 1
    #                                 break

    vt_addr = 0

    asms = [os.path.join(pth, f) for pth, dirs, files in os.walk(asm_dir) for f in files]
    for asm in asms:
        if asm.endswith(".inc"): # skip
            continue

        lines = open(f"{asm}", "r").readlines()
        i = 0
        while i < len(lines):
            if lines[i].startswith("\tthumb_func_start"):
                fn_name = lines[i].split()[1]
                i += 1
                fn_addr = lines[i].split()[2]
                i += 1
                for pair in xref_func_pairs:
                    #print(pair[1], int(fn_addr, 16))
                    if pair[1] == int(fn_addr, 16):
                        print(f"struct_{format(vt_addr, 'x').zfill(8).upper()}: {fn_addr}")
                        # new vt
                        vt_addr = pair[0]
                        break
                struct_name = f"struct_{format(vt_addr, 'x').zfill(8).upper()}"

                if i >= len(lines):
                    break

                path = f"{asm_dir}/non_matching/{struct_name}"
                if os.path.exists(path) == False:
                    os.makedirs(path)

                with open(f"{path}/{fn_name}.inc", "w") as inc:
                    while lines[i].startswith("\tthumb_func_start") == False:
                        inc.write(f"{lines[i]}")
                        i += 1

                        if i >= len(lines):
                            break
            i += 1


                # while True: # if the function is one that ref'd a different vt, stop here
                #     entry = [pair for pair in xref_func_pairs if pair[2] == fn_name]
                #         i += 2

def __main__():
    rom = bytearray(open(sys.argv[1], 'rb').read())
    map = open(sys.argv[2], 'r')
    begin = vaddr_to_off(int(sys.argv[3], 16))
    end = vaddr_to_off(int(sys.argv[4], 16))

    xrefs = read_fn_pools(rom, map, begin, end)
    map.close()

    print(f"vt cnt: {len(xrefs)}")
    vts = read_all_vts(rom, xrefs, begin, end)
    
    #compiler_path = "tools/agbcc/bin/agbcp"

    vt_linker = open("split_vtables.txt", "w")
    tu_linker = open("split_files.txt", "w")

    for vt in vts:
        struct_name = f"struct_{format(vt.vt_addr, 'x').zfill(8).upper()}"
        fn_names = []

        xref_idx = 0
        while xref_func_pairs[xref_idx][0] != vt.vt_addr:
            xref_idx += 1

        while xref_func_pairs[xref_idx][0] == vt.vt_addr:
            fn_names.append(f"sub_{format(xref_func_pairs[xref_idx][1], 'x').zfill(8).upper()}")
            # fn_dec_strings += f"    virtual void {fn_name}();\n"
            # fn_def_strings += f"void {struct_name}::{fn_name}(){{}}\n"
            xref_idx += 1

        create_tu(struct_name, fn_names)
        vt_linker.write(f"_vt.{struct_name} = 0x{format(vt.vt_addr, 'x').zfill(8).upper()};\n")
        tu_linker.write(f"{dest_dir}/{struct_name}.o(.text);\n")

    extract_asm()

    vt_linker.close()
    tu_linker.close()

if __name__ == '__main__':
    __main__()
