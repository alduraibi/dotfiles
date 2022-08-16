import yaml
import subprocess
import os.path

home_dir = os.environ["HOME"]
dotfiles_dir = os.path.dirname(__file__)

# Use termux config file if available
if "TERMUX_VERSION" in os.environ:
    config_file = dotfiles_dir + "/stowd_termux.yaml"
else:
    config_file = dotfiles_dir + "/stowd.yaml"
if not os.path.isfile(config_file):
    print("Config file not found. [" + config_file + "]")
    exit

with open(config_file, 'r') as stream:
    config_loaded = yaml.safe_load(stream)


# initialize arrays in case it's not declared in the config
stow_home = []
# Load arrays from yaml config file
if 'stow_home' in config_loaded:
    stow_home = config_loaded['stow_home']
for app in stow_home:
    app_path = dotfiles_dir + '/' + app
    if not os.path.isdir(app_path):
        print(app_path + " directory not found.")
    else:
        output = subprocess.run(["stow", "--no-folding", "--dir=" +
                                dotfiles_dir, "--target=" + home_dir,
                                "--restow", app])
        if not output.returncode:
            print("stowd " + app)

# initialize arrays in case it's not declared in the config
unstow_home = []
# Load arrays from yaml config file
if 'unstow_home' in config_loaded:
    unstow_home = config_loaded['unstow_home']
for app in unstow_home:
    app_path = dotfiles_dir + '/' + app
    if not os.path.isdir(app_path):
        print(app_path + " directory not found.")
    else:
        output = subprocess.run(["stow", "--no-folding", "--dir=" +
                                dotfiles_dir, "--target=" + home_dir,
                                "--delete", app])
        if not output.returncode:
            print("unstowd " + app)


# Avoid running in termux since root is inaccessible
if "TERMUX_VERSION" not in os.environ:

    # initialize arrays in case it's not declared in the config
    stow_root = []
    # Load arrays from yaml config file
    if 'stow_root' in config_loaded:
        stow_root = config_loaded['stow_root']
    for app in stow_root:
        if not os.path.isdir(app_path):
            print(app_path + " directory not found.")
        else:
            output = subprocess.run(["sudo", "stow", "--no-folding", "--dir="
                                    + dotfiles_dir, "--target=/", "--restow",
                                    app])
            if not output.returncode:
                print("stowd " + app)

    # initialize arrays in case it's not declared in the config
    unstow_root = []
    # Load arrays from yaml config file
    if 'unstow_root' in config_loaded:
        unstow_root = config_loaded['unstow_root']
    for app in unstow_root:
        if not os.path.isdir(app_path):
            print(app_path + " directory not found.")
        else:
            output = subprocess.run(["sudo", "stow", "--no-folding", "--dir="
                                    + dotfiles_dir, "--target=/", "--delete",
                                    app])
            if not output.returncode:
                print("unstowd " + app)
