import os

restricted_files = ["makeSymLinks.py", ".directory", ".git", ".gitignore", ".gitmodules"]

for file_name in os.listdir("."):
    if file_name in restricted_files:
        continue
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
