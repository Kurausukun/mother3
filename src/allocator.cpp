#include "allocator.h"

extern "C" void sub_08087E74(const char* fmt, ...);
extern "C" void sub_08087DCC(const char* fmt, ...);
extern "C" void sub_08087D04(const char* fmt, ...);
extern "C" u32 sub_08087C70(u32);
extern "C" void sub_08087D48();

FitAllocator::FitAllocator(u32 size, Fit* fit) {
    buf_size = size;
    _4 = fit;
    fit->sig[0] = 'f';
    fit->sig[1] = 'r';
    fit->sig[2] = 'e';
    fit->sig[3] = 'e';
    fit->size = size;
    fit->data = 0;
    head = fit;
}

FitAllocator::~FitAllocator() {
    int addr = 0;
    for (Fit* i = head; i != 0; i = i->next()) {
        if (i->sig32 != 'eerf') {
            sub_08087E74((const char*)0x080FEC68, i);
        }
        addr += i->size;
    }
    if (addr != buf_size) {
        sub_08087E74((const char*)0x080FECAC, addr, buf_size);
        for (Fit* i = head; i != 0; i = i->next()) {
            if (i->next() != 0 && i->next() != (Fit*)((u8*)i + i->size)) {
                sub_08087E74((const char*)0x080FECF0, i, i->size);
            }
        }
    }
}

#ifdef NONMATCHING
void* FitAllocator::malloc(u32 size) {
    u32 size_aligned = size + 8;
    if (size < 12)
        size_aligned = 20;

    if ((size_aligned & 3) != 0)
        size_aligned += 4 - (size_aligned & 3);

    Fit* f = (Fit*)&_8;
    for (;; f = f->next) {
        if (f->next == 0 || f->next->size < size_aligned)
            break;
    }

    if (f->next == 0)
        return 0;

    Fit* next = f->next;
    Fit* blk = (Fit*)((u8*)f->next + size_aligned);
    if (f->next->size - size_aligned <= 0x18) {
        f->next = next->next;
        next->sig[0] = 'u';
        next->sig[1] = 's';
        next->sig[2] = 'e';
        next->sig[3] = ' ';
    } else {
        blk->sig[0] = 'f';
        blk->sig[1] = 'r';
        blk->sig[2] = 'e';
        blk->sig[3] = 'e';
        blk->next = next->next;
        blk->size = next->size - size_aligned;
        f->next = blk;
        next->sig[0] = 'u';
        next->sig[1] = 's';
        next->sig[2] = 'e';
        next->sig[3] = ' ';
        next->size = size_aligned;
    }
    return (Fit*)((u32)next + 8);
}
#else
NAKED
void* FitAllocator::malloc(u32 size) {
    asm_unified("\n\
	push {r4, r5, lr}\n\
	adds r2, r0, #0\n\
	adds r5, r1, #0\n\
	adds r5, #8\n\
	cmp r1, #0xb\n\
	bhi _080696D2\n\
	movs r5, #0x14\n\
_080696D2:\n\
	movs r1, #3\n\
	ands r1, r5\n\
	cmp r1, #0\n\
	beq _080696DE\n\
	adds r0, r5, #4\n\
	subs r5, r0, r1\n\
_080696DE:\n\
	adds r4, r2, #0\n\
	adds r4, #8\n\
	b _080696E6\n\
_080696E4:\n\
	ldr r4, [r4, #8]\n\
_080696E6:\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	beq _080696F2\n\
	ldr r0, [r0, #4]\n\
	cmp r0, r5\n\
	blo _080696E4\n\
_080696F2:\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	bne _080696FC\n\
	movs r0, #0\n\
	b _0806974C\n\
_080696FC:\n\
	adds r2, r0, #0\n\
	adds r3, r2, r5\n\
	ldr r1, [r2, #4]\n\
	subs r0, r1, r5\n\
	cmp r0, #0x18\n\
	bhi _0806971E\n\
	ldr r0, [r2, #8]\n\
	str r0, [r4, #8]\n\
	movs r0, #0x75\n\
	strb r0, [r2]\n\
	movs r0, #0x73\n\
	strb r0, [r2, #1]\n\
	movs r0, #0x65\n\
	strb r0, [r2, #2]\n\
	movs r0, #0x20\n\
	strb r0, [r2, #3]\n\
	b _08069748\n\
_0806971E:\n\
	movs r0, #0x66\n\
	strb r0, [r3]\n\
	movs r0, #0x72\n\
	strb r0, [r3, #1]\n\
	movs r1, #0x65\n\
	strb r1, [r3, #2]\n\
	strb r1, [r3, #3]\n\
	ldr r0, [r2, #8]\n\
	str r0, [r3, #8]\n\
	ldr r0, [r2, #4]\n\
	subs r0, r0, r5\n\
	str r0, [r3, #4]\n\
	str r3, [r4, #8]\n\
	movs r0, #0x75\n\
	strb r0, [r2]\n\
	movs r0, #0x73\n\
	strb r0, [r2, #1]\n\
	strb r1, [r2, #2]\n\
	movs r0, #0x20\n\
	strb r0, [r2, #3]\n\
	str r5, [r2, #4]\n\
_08069748:\n\
	adds r0, r2, #0\n\
	adds r0, #8\n\
_0806974C:\n\
	pop {r4, r5}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
    ");
}
#endif

extern const char gUnknown_080FED18[];

#ifdef NONMATCHING
void FitAllocator::free(void* ptr) {
    if (ptr != 0) {
        Fit* f = (Fit*)((u8*)ptr - 8);
        if (*(u32*)f->sig != 0x20657375) {
            // �G���[�FFitAllocator.free() - �s���ȃ�����%p��������悤�Ƃ��܂����B
            sub_08087E74(gUnknown_080FED18, ptr);
        } else {
            f->sig[0] = 'f';
            f->sig[1] = 'r';
            f->sig[2] = 'e';
            f->sig[3] = 'e';

            Fit* next;
            for (next = (Fit*)&_8; next->next != 0 && next->next <= f; next = next->next) {
            }
            f->next = next->next;
            next->next = f;
        }
    }
}
#else
NAKED
void FitAllocator::free(void* ptr) {
    asm_unified("\n\
	push {r4, lr}\n\
	adds r4, r0, #0\n\
	adds r2, r1, #0\n\
	cmp r2, #0\n\
	beq _080697A4\n\
	adds r3, r2, #0\n\
	subs r3, #8\n\
	ldr r1, [r3]\n\
	ldr r0, _08069774 @ =0x20657375\n\
	cmp r1, r0\n\
	beq _0806977C\n\
	ldr r0, _08069778 @ =gUnknown_080FED18\n\
	adds r1, r2, #0\n\
	bl sub_08087E74\n\
	b _080697A4\n\
	.align 2, 0\n\
_08069774: .4byte 0x20657375\n\
_08069778: .4byte gUnknown_080FED18\n\
_0806977C:\n\
	adds r1, r3, #0\n\
	movs r0, #0x66\n\
	strb r0, [r1]\n\
	movs r0, #0x72\n\
	strb r0, [r1, #1]\n\
	movs r0, #0x65\n\
	strb r0, [r1, #2]\n\
	strb r0, [r1, #3]\n\
	adds r2, r4, #0\n\
	adds r2, #8\n\
	b _08069794\n\
_08069792:\n\
	ldr r2, [r2, #8]\n\
_08069794:\n\
	ldr r0, [r2, #8]\n\
	cmp r0, #0\n\
	beq _0806979E\n\
	cmp r0, r1\n\
	bls _08069792\n\
_0806979E:\n\
	ldr r0, [r2, #8]\n\
	str r0, [r1, #8]\n\
	str r1, [r2, #8]\n\
_080697A4:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
    ");
}
#endif

void FitAllocator::defragment() {
    Fit* f = head;

    for (Fit* f = head; f != 0; f = f->next()) {
        Fit* next = f->next();
        Fit* f2 = (Fit*)((u8*)f + f->size);

        if (f2 == next) {
            f->size = f->size + f2->size;
            f->data = f2->next();
        }
    }
}

u32 FitAllocator::bytesRemaining() {
    u32 size = 0;
    for (Fit* f = head; f != 0; f = f->next()) {
        size += f->size;
    }
    return buf_size - size;
}

void FitAllocator::check() {
    u32 size;

    size = 0;
    for (Fit* f = head; f != 0; f = f->next()) {
        if (f < _4 || f >= (Fit*)((u8*)_4 + buf_size)) {
            sub_08087DCC((const char*)0x080fed60);
        }
        size += f->size;
    }
    if (size > buf_size) {
        sub_08087DCC((const char*)0x080fed80);
    }
}

extern const char gUnknown_080FEDA4[];
extern const char gUnknown_080FEDB4[];
extern const char gUnknown_080FEDC4[];

void FitAllocator::getInfo() {
    int size;
    int num_chunks;

    num_chunks = 0;
    size = 0;
    for (Fit* f = head; f != 0; f = f->next()) {
        size += f->size;
        num_chunks++;
    }
    sub_08087D04((const char*)gUnknown_080FEDA4, buf_size - size);
    sub_08087D04((const char*)gUnknown_080FEDB4, size);
    sub_08087D04((const char*)gUnknown_080FEDC4, num_chunks);
    sub_08087C70(10);
    sub_08087D48();
}
