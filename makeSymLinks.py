import os

file_names = [f for f in os.listdir(".") if os.path.isfile(f)]
for file_name in file_names:
    if file_name != "makeSymLinks.py":
        destination_path = "~/"+"."+file_name
        source_path = file_name
        os.symlink(source_path, destination_path)
