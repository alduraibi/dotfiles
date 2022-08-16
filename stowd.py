import configparser
import subprocess
import os.path

home_dir = os.environ["HOME"]
dotfiles_dir = os.path.dirname(__file__)
config_file = dotfiles_dir + "/stowd.ini"
if not os.path.isfile(config_file):
    print("Config file not found. [" + config_file + "]")
    exit()

config = configparser.ConfigParser()
config.read(config_file)

# Use termux config file if available
if "TERMUX_VERSION" in os.environ:
    section = "TERMUX"
else:
    section = "LAPTOP"

if section not in config:
    print(section + " section missing in config file")
    exit()

for app in config.options(section):
    app_path = dotfiles_dir + '/' + app
    if not os.path.isdir(app_path):
        print(app_path + " directory not found.")
    else:
        option = config.get(section, app)
        if option == "stow":
            output = subprocess.run(["stow", "--no-folding", "--dir=" +
                                    dotfiles_dir, "--target=" + home_dir,
                                    "--restow", app])
            if not output.returncode:
                print("stowd " + app)
        elif option == "unstow":
            output = subprocess.run(["stow", "--no-folding", "--dir=" +
                                    dotfiles_dir, "--target=" + home_dir,
                                    "--delete", app])
            if not output.returncode:
                print("unstowd " + app)
        elif option == "stow-root":
            output = subprocess.run(["sudo", "stow", "--no-folding", "--dir="
                                    + dotfiles_dir, "--target=/", "--restow",
                                    app])
            if not output.returncode:
                print("stowd " + app)
        elif option == "unstow-root":
            output = subprocess.run(["sudo", "stow", "--no-folding", "--dir="
                                    + dotfiles_dir, "--target=/", "--delete",
                                    app])
            if not output.returncode:
                print("unstowd " + app)
