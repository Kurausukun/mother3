#!/usr/bin/env python3
import os
import re
import sys
from pathlib import Path

def extract_functions(asm_file):
    with open(asm_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Split content into functions
    functions = []
    current_function = None
    current_content = []
    
    for line in content.split('\n'):
        # Check for function start (global symbol with address)
        match = re.match(r'\s*(\w+):\s*@\s*0x(\w+)', line)
        
        # Check if this is a local label (starts with _) or data label
        is_local_or_data = re.match(r'\s*_\w+:', line) or re.match(r'\s*\w+_\w+:', line)
        
        if match and not line.strip().startswith('_'):  # Only treat as new function if not a local label
            if current_function:
                functions.append((current_function, '\n'.join(current_content)))
            current_function = match.group(1)
            current_content = [line]
        elif is_local_or_data and current_function:
            # Keep local and data labels with their parent function
            current_content.append(line)
        elif current_function:
            current_content.append(line)
    
    # Add the last function
    if current_function and current_content:
        functions.append((current_function, '\n'.join(current_content)))
    
    return functions

def create_asm_include(func_name, content, output_dir):
    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Create output file path
    output_file = output_dir / f"{func_name}.inc"
    
    # Prepare content with proper syntax
    asm_content = "\t.syntax unified\n"
    lines = content.split('\n')
    in_function = False
    
    for line in lines:
        # Skip empty lines
        stripped = line.strip()
        if not stripped:
            continue
            
        # Skip comments and thumb_func_start
        if stripped.startswith(('@', '//', 'thumb_func_start')):
            continue
            
        # Clean up the line (remove comments and trailing whitespace)
        clean_line = line.split('@')[0].rstrip()
        if not clean_line:
            continue
            
        # Skip only the main function label line (starts with function name and ends with :)
        if clean_line.startswith(func_name) and clean_line.endswith(':'):
            in_function = True
            continue
            
        # Keep all other label lines (local labels and data labels)
        if clean_line.endswith(':'):
            asm_content += f"{clean_line}\n"
            continue
            
        # Skip any remaining directives (except for .align which is often needed)
        if clean_line.startswith('.') and not clean_line.startswith('.align'):
            continue
            
        # Only add the line if we're in the function body
        if in_function:
            asm_content += f"{clean_line}\n"
    
    # Ensure .syntax divided is at the end of the file
    asm_content = asm_content.rstrip() + '\n\t.syntax divided\n'
    # Write to file
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(asm_content)
    
    return output_file

def generate_cpp_source(functions, output_file, asm_dir_rel):
    # Prepare C++ source content
    source_content = "// Auto-generated source file\n"
    source_content += "#include \"global.h\"\n\n"
    
    # Add ASM_FUNC declarations for each function
    for func_name, _ in functions:
        # Default to void return type and no parameters
        source_content += f'extern "C" ASM_FUNC(\"{asm_dir_rel}/{func_name}.inc\", void {func_name}());\n'

    # Write to file
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(source_content)

def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <asm_file>")
        sys.exit(1)
    
    asm_file = Path(sys.argv[1])
    if not asm_file.exists():
        print(f"Error: File not found: {asm_file}")
        sys.exit(1)
    
    # Create output directories
    base_dir = asm_file.parent
    output_dir = base_dir / 'non_matching' / asm_file.stem
    output_dir_rel = f"asm/non_matching/{asm_file.stem}"
    
    # Extract functions from assembly file
    functions = extract_functions(asm_file)
    print(f"Found {len(functions)} functions in {asm_file}")
    
    # Process each function
    for func_name, content in functions:
        create_asm_include(func_name, content, output_dir)
    
    # Generate C++ source file
    cpp_source = base_dir.parent / 'src' / f"{asm_file.stem}_asm.cpp"
    generate_cpp_source(functions, cpp_source, output_dir_rel)
    
    print(f"Generated {len(functions)} assembly include files in {output_dir}")
    print(f"Generated C++ source at {cpp_source}")

if __name__ == "__main__":
    main()
