# Environmental Variables


## XDG
### XDG system directories
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg
### XDG hidden user directories
export XDG_CONFIG_HOME=$HOME/.config
mkdir -p "$XDG_CONFIG_HOME"
export XDG_CACHE_HOME=$HOME/.cache
mkdir -p "$XDG_CACHE_HOME"
export XDG_DATA_HOME=$HOME/.local/share
mkdir -p "$XDG_DATA_HOME"
export XDG_STATE_HOME=$HOME/.local/state
mkdir -p "$XDG_STATE_HOME"
#XDG_RUNTIME_DIR=$HOME/
### XDG user directories
export XDG_DESKTOP_DIR=$HOME/Desktop
export XDG_DOCUMENTS_DIR=$HOME/Documents
export XDG_DOWNLOAD_DIR=$HOME/Downloads
export XDG_MUSIC_DIR=$HOME/Music
export XDG_PICTURES_DIR=$HOME/Pictures
export XDG_PUBLICSHARE_DIR=$HOME/Public
export XDG_TEMPLATES_DIR=$HOME/Templates
export XDG_VIDEOS_DIR=$HOME/Videos

### XDG ###
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export CALCHISTFILE="$XDG_CACHE_HOME"/calc_history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
#eval $(dircolors "$XDG_CONFIG_HOME"/dircolors)
if [ -e $XDG_CONFIG_HOME/dir_colors/.dir_colors ]; then
	eval $(dircolors $XDG_CONFIG_HOME/dir_colors/.dir_colors)
fi
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export ELM_HOME="$XDG_CONFIG_HOME"/elm
export FFMPEG_DATADIR="$XDG_CONFIG_HOME"/ffmpeg
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export KDEHOME="$XDG_CONFIG_HOME"/kde
#KODI_DATA=$XDG_DATA_HOME/kodi
export LYNX_CFG_PATH="$XDG_CONFIG_HOME"/lynx.cfg
export MATHEMATICA_USERBASE="$XDG_CONFIG_HOME"/mathematica
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
#export TERMINFO="$XDG_DATA_HOME"/terminfo
#export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
#nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
hash psql &> /dev/null && {
  mkdir -p "$XDG_CONFIG_HOME/pg"
  export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
  export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
  export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
  export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
}
mkdir -p "$XDG_CONFIG_HOME/python"
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/startup.py"
export REDISCLI_HISTFILE="$XDG_DATA_HOME"/redis/rediscli_history
export REDISCLI_RCFILE="$XDG_CONFIG_HOME"/redis/redisclirc
export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/config
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
#sqlite3 -init "$XDG_CONFIG_HOME"/sqlite3/sqliterc
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/starship.toml
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
#echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$XDG_CONFIG_HOME/wgetrc"
#mkdir -p "$XDG_DATA_HOME"/wineprefixes
#export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
#xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'

hash wl-copy &> /dev/null && {
  alias copy="wl-copy"
  alias paste="wl-paste"
}
