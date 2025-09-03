#!/usr/bin/env python3
import os

def add_labels_to_asm_files(root_dir):
    for root, _, files in os.walk(root_dir):
        for file in files:
            if file.endswith('.inc'):
                filepath = os.path.join(root, file)
                func_name = os.path.splitext(file)[0]  # Remove .inc extension
                
                with open(filepath, 'r+', encoding='utf-8') as f:
                    lines = f.read().splitlines()
                    
                    # Skip if file already has the label
                    if any(line.strip() == f"{func_name}:" for line in lines):
                        continue
                        
                    # Find the .syntax line
                    for i, line in enumerate(lines):
                        if line.strip().startswith('.syntax'):
                            # Insert label after .syntax line
                            lines.insert(i + 1, f"{func_name}:")
                            f.seek(0)
                            f.write('\n'.join(lines) + '\n')
                            f.truncate()
                            print(f"Added label to {filepath}")
                            break

if __name__ == "__main__":
    non_matching_dir = os.path.join('asm', 'non_matching')
    add_labels_to_asm_files(non_matching_dir)
