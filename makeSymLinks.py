import os

restricted_files = ["makeSymLinks.py", ".directory", ".git", ".gitignore"]

file_names = [f for f in os.listdir(".") if f not in restricted_files]

for file_name in file_names:
    destination_path = os.path.join(os.getenv("HOME"), "."+file_name)
    source_path = os.path.realpath(file_name)
    if os.path.exists(destination_path):
      option = raw_input("File %s already exists in %s. Overwite? (y/n)   " % (file_name, destination_path))
      if option.lower() == 'y' or option.lower() == "":
	os.remove(destination_path)
      else:
	continue
    print "Making symbolic link for", file_name
    os.symlink(source_path, destination_path)