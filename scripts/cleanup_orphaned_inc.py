#!/usr/bin/env python3
"""
Script to remove orphaned .inc files from asm/non_matching/
that are not referenced in any src/ files.
"""

from pathlib import Path


def find_orphaned_inc_files(project_root):
    """Find .inc files in non_matching that aren't referenced in src files."""

    project_path = Path(project_root)
    non_matching_dir = project_path / "asm" / "non_matching"
    src_dir = project_path / "src"

    if not non_matching_dir.exists():
        print(f"Error: {non_matching_dir} does not exist")
        return [], []

    if not src_dir.exists():
        print(f"Error: {src_dir} does not exist")
        return [], []

    # Find all .inc files in non_matching
    inc_files = []
    for inc_file in non_matching_dir.rglob("*.inc"):
        # Get relative path from project root
        rel_path = inc_file.relative_to(project_path)
        inc_files.append((inc_file, str(rel_path)))

    print(f"Found {len(inc_files)} .inc files in non_matching directory")

    # Read all source files content from both src/ and include/ directories
    include_dir = project_path / "include"

    src_content = ""
    src_files = []

    # Search in src directory
    for ext in ["*.cpp", "*.c", "*.h"]:
        src_files.extend(src_dir.rglob(ext))

    # Also search in include directory if it exists
    if include_dir.exists():
        for ext in ["*.h", "*.hpp", "*.inc"]:
            src_files.extend(include_dir.rglob(ext))

    print(f"Reading {len(src_files)} source and header files...")

    for src_file in src_files:
        try:
            with open(src_file, "r", encoding="utf-8", errors="ignore") as f:
                src_content += f.read() + "\n"
        except Exception as e:
            print(f"Warning: Could not read {src_file}: {e}")

    # Find orphaned files
    orphaned_files = []
    referenced_files = []

    for inc_file_path, rel_path_str in inc_files:
        # Check if the relative path appears anywhere in source files
        if rel_path_str in src_content:
            referenced_files.append((inc_file_path, rel_path_str))
        else:
            orphaned_files.append((inc_file_path, rel_path_str))

    return orphaned_files, referenced_files


def main():
    # Get the project root (script should be run from project root)
    project_root = Path(__file__).parent.parent

    print(f"Analyzing project at: {project_root}")
    print("=" * 60)

    orphaned_files, referenced_files = find_orphaned_inc_files(project_root)

    print("\nSummary:")
    print(f"- Referenced files: {len(referenced_files)}")
    print(f"- Orphaned files: {len(orphaned_files)}")

    if orphaned_files:
        print("\nOrphaned files to be deleted:")
        for file_path, rel_path in orphaned_files:
            print(f"  - {rel_path}")

        # Ask for confirmation
        response = input(
            f"\nDo you want to delete {len(orphaned_files)} orphaned files? (y/N): "
        )

        if response.lower() in ["y", "yes"]:
            deleted_count = 0
            for file_path, rel_path in orphaned_files:
                try:
                    file_path.unlink()
                    print(f"Deleted: {rel_path}")
                    deleted_count += 1
                except Exception as e:
                    print(f"Error deleting {rel_path}: {e}")

            print(
                f"\nDeleted {deleted_count} out of {len(orphaned_files)} orphaned files."
            )
        else:
            print("Deletion cancelled.")
    else:
        print(
            "\nNo orphaned files found. All .inc files are referenced in source code."
        )

    print("\nDone!")


if __name__ == "__main__":
    main()
