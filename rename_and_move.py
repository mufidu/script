import os
import sys
import shutil

def should_ignore(filename):
    # Add any other files you want to ignore here
    ignore_list = ['.DS_Store']
    return filename in ignore_list or filename.startswith('.')

def rename_and_move_files(folder_a, folder_b):
    # Get the list of files in both folders, ignoring .DS_Store and hidden files
    files_a = [f for f in os.listdir(folder_a) if not should_ignore(f)]
    files_b = [f for f in os.listdir(folder_b) if not should_ignore(f)]

    # Sort the files to ensure correct matching, ignoring extensions
    files_a.sort(key=lambda f: os.path.splitext(f)[0])
    files_b.sort(key=lambda f: os.path.splitext(f)[0])

    # Check if the number of files match
    if len(files_a) != len(files_b):
        print(f"Error: Number of files in folders doesn't match. Folder A: {len(files_a)}, Folder B: {len(files_b)}")
        return

    # Rename files in folder A and move them to folder B
    for file_a, file_b in zip(files_a, files_b):
        old_path = os.path.join(folder_a, file_a)
        new_filename = os.path.splitext(file_b)[0] + os.path.splitext(file_a)[1]
        new_path = os.path.join(folder_a, new_filename)
        
        # Rename the file
        os.rename(old_path, new_path)
        print(f"Renamed '{file_a}' to '{new_filename}'")
        
        # Move the renamed file to folder B
        final_path = os.path.join(folder_b, new_filename)
        shutil.move(new_path, final_path)
        print(f"Moved '{new_filename}' to '{folder_b}'")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script_name.py <path_to_folder_a> <path_to_folder_b>")
        sys.exit(1)

    folder_a = sys.argv[1]
    folder_b = sys.argv[2]

    if not os.path.isdir(folder_a) or not os.path.isdir(folder_b):
        print("Error: Both arguments must be valid directory paths.")
        sys.exit(1)

    rename_and_move_files(folder_a, folder_b)

