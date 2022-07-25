import yaml
import subprocess
import os.path

home_dir = os.environ["HOME"]
#dotfiles_dir = home_dir + "/.dotfiles"
config_file = "stowd.yaml"
if not os.path.isfile(config_file):
    print("Config file not found. [" + config_file + "]")
    exit

with open(config_file, 'r') as stream:
    config_loaded = yaml.safe_load(stream)

# initialize arrays in case it's not declared in the config
stow_home = []
stow_root = []
unstow_home = []
unstow_root = []
# Load arrays from yaml config file
if 'stow_home' in config_loaded:
    stow_home = config_loaded['stow_home']
if 'stow_root' in config_loaded:
    stow_root = config_loaded['stow_root']
if 'unstow_home' in config_loaded:
    unstow_home = config_loaded['unstow_home']
if 'unstow_root' in config_loaded:
    unstow_root = config_loaded['unstow_root']


for app in stow_home:
    if not os.path.isdir(app):
        print(app + " directory not found.")
    else:
        output = subprocess.run(["stow", "--no-folding", "--target=" + home_dir, "--restow", app])
        if not output.returncode:
            print("stowd " + app)

for app in unstow_home:
    if not os.path.isdir(app):
        print(app + " directory not found.")
    else:
        output = subprocess.run(["stow", "--no-folding", "--target=" + home_dir, "--delete", app])
        if not output.returncode:
            print("unstowd " + app)

for app in stow_root:
    if not os.path.isdir(app):
        print(app + " directory not found.")
    else:
        output = subprocess.run(["sudo", "stow", "--no-folding", "--target=/", "--restow", app])
        if not output.returncode:
            print("stowd " + app)


for app in unstow_root:
    if not os.path.isdir(app):
        print(app + " directory not found.")
    else:
        output = subprocess.run(["sudo", "stow", "--no-folding", "--target=/", "--delete", app])
        if not output.returncode:
            print("unstowd " + app)
