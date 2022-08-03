# Set gsettings
if [ -e $XDG_CONFIG_HOME/gtk-3.0/gsettings.sh ]; then
	eval $($XDG_CONFIG_HOME/gtk-3.0/gsettings.sh)
fi
