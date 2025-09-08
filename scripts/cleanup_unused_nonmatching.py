#!/usr/bin/env python3
import os
import re
from pathlib import Path

def find_non_matching_files(non_matching_dir):
    """Find all .inc files in the non_matching directory and its subdirectories."""
    non_matching_files = []
    for root, _, files in os.walk(non_matching_dir):
        for file in files:
            if file.endswith('.inc') and not file.startswith('.'):
                # Get the base name without extension
                base_name = os.path.splitext(file)[0]
                # Get relative path from non_matching_dir
                rel_path = os.path.relpath(os.path.join(root, file), non_matching_dir)
                # Only use the filename (without extension) for reference checking
                non_matching_files.append((base_name, rel_path, file))
    return non_matching_files

def is_file_referenced_in_src(rel_path, base_name, src_dir):
    """Check if the rel_path or base_name is referenced in any .c or .h files in src_dir."""
    # Convert Windows paths to forward slashes for consistency
    rel_path = rel_path.replace('\\', '/')
    
    # Create patterns to match:
    # 1. The full path as a string literal
    # 2. The base name as a function name (for ASM_FUNC macros)
    path_pattern = re.compile(re.escape(rel_path))
    func_pattern = re.compile(r'\b' + re.escape(base_name) + r'\b')
    
    for root, _, files in os.walk(src_dir):
        for file in files:
            if file.endswith(('.c', '.h', '.cpp', '.hpp')):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                        # Check for either the full path or the function name
                        if path_pattern.search(content) or func_pattern.search(content):
                            return True
                except (IOError, UnicodeDecodeError) as e:
                    print(f"Warning: Could not read {file_path}: {e}")
    return False

def main():
    project_root = Path(__file__).parent.parent
    non_matching_dir = project_root / 'asm' / 'non_matching'
    src_dir = project_root / 'src'
    asm_dir = project_root / 'asm'
    include_dir = project_root / 'include'
    
    if not all(d.exists() for d in [non_matching_dir, src_dir, asm_dir, include_dir]):
        print("Error: Could not find required directories. Please run from project root.")
        return
    
    print("Scanning for non-matching assembly files...")
    non_matching_files = find_non_matching_files(non_matching_dir)
    print(f"Found {len(non_matching_files)} non-matching assembly files.")
    
    unused_files = []
    for base_name, rel_path, filename in non_matching_files:
        full_path = non_matching_dir / rel_path
        # Convert to forward slashes for consistency
        rel_path_str = str(rel_path).replace('\\', '/')
        print(f"Checking if {rel_path_str} is referenced in source files...", end=' ', flush=True)
        
        # Check for references in src/, asm/, and include/ directories
        full_path = f"asm/non_matching/{rel_path_str}"
        if not (is_file_referenced_in_src(full_path, base_name, src_dir) or 
                is_file_referenced_in_src(full_path, base_name, asm_dir) or
                is_file_referenced_in_src(full_path, base_name, include_dir)):
            print("NOT REFERENCED")
            unused_files.append(full_path)
        else:
            print("referenced")
    
    if not unused_files:
        print("\nNo unused non-matching files found.")
        return
    
    print(f"\nFound {len(unused_files)} unused non-matching files:")
    for file in unused_files:
        print(f"  - {file}")
    
    response = input("\nDo you want to delete these files? [y/N] ").strip().lower()
    if response == 'y':
        deleted_count = 0
        for file in unused_files:
            try:
                os.remove(file)
                print(f"Deleted: {file}")
                deleted_count += 1
            except OSError as e:
                print(f"Error deleting {file}: {e}")
        print(f"\nSuccessfully deleted {deleted_count} unused files.")
    else:
        print("No files were deleted.")

if __name__ == "__main__":
    main()
