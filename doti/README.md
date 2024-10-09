# doti

> Easily manage all your dotfiles across your devices.<sup>[1][desc]</sup>

**Links:** [Source Code] - [Package]

## Install:

```
# Cross-platform: using venv & pip
python -m venv .venv            # Create python virtual environment
source .venv/bin/activate       # Activate virtual environment
python -m pip install doti      # Install `doti` in venv

# Cross-platform: using pip (no venv)
pip install doti

# Arch Linux: from AUR
yay -S doti

```

## Usage:

```sh
# Open your dotfiles directory
cd path/to/dotfiles/directory

# Only if you installed `doti` using a venv
source .venv/bin/activate        # Activate virtual environment

# Run `doti` to link your dotfiles into their correct places
doti
```

[desc]: https://github.com/alduraibi/doti
[source code]: https://github.com/alduraibi/doti
[package]: https://pypi.org/project/doti/
