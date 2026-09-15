# export TERM="xterm-256color"
export SYSTEMD_COLORS=true
GENCOMPL_FPATH=$HOME/.zsh/completions
export $(dbus-launch)
# export LS_COLORS="$(vivid generate snazzy)"
PASTEL_COLOR_MODE=24bit
UV_PYTHON_DOWNLOADS=never

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8
export PYFIGLET_FONTS=$HOME/.local/pipx/venvs/yulelog/lib/python3.14/site-packages/pyfiglet/fonts
export XTRA_FIGLET_FONTS=/usr/share/figlet/fonts
# HACK: I'm lazy
RUBY_VERSION=`ruby --version | awk -F ' ' '{print $2}' | awk -F '.' '{print $1"."$2".0"}'`
export RUBY_GEMS_BIN=$HOME/.local/share/gem/ruby/$RUBY_VERSION/bin
CARGO_BIN=/home/spiritomb/.cargo/bin

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/data/linguistics/tools/bin:/usr/local/bin:$HOME/bat-extras/bin:/data/linguistics/tools/mobiperl/mobi-perl:$PATH
export PATH=$HOME/bin:$HOME/.local/bin:$CARGO_BIN:$RUBY_GEMS_BIN:/usr/local/bin:$HOME/x-tools/*/bin:/data/linguistics/tools/mobiperl/mobi-perl:$PATH

export WORKON_HOME=$HOME/.venvs
export NVM_DIR=/opt/nvm
export NVM_AUTO_USE=true
export NVM_COLORS="bGgMe"
export NPM_CONFIG_FUND=false

PATH="/home/spiritomb/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/spiritomb/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/spiritomb/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/spiritomb/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/spiritomb/perl5"; export PERL_MM_OPT;

fpath=("$HOME/.local/share/zsh/completions" "$HOME/.zsh/completions" $fpath)

# Path to your oh-my-zsh installation.
  export ZSH="/usr/share/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh/custom
export ZSH_CACHE_DIR=~/.oh-my-zsh/cache

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    history-substring-search
    archlinux
    # autoswitch_virtualenv
    # autoupdate
    colored-man-pages
    command-not-found
    git-extras
    gitfast
    # gitignore
    gpg-agent
    isodate
    keychain
    # npm
    nvm
    panda-zsh-syntax-highlighting
    pip
    # pyenv
    systemadmin
    systemd
    tmux
    # vi-mode
    virtualenvwrapper
    yarn
    yt-dlp
    # uv
    urltools
)

# clone your external plugins if needed
external_plugins=(
  romkatv/zsh-defer
  RobSis/zsh-completion-generator
  djui/alias-tips
  # victoria-riley-barnett/Communism
  # Freed-Wu/zsh-help
  # ryanccn/vivid-zsh
  # Aloxaf/fzf-tab
  mfaerevaag/wd
  hlissner/zsh-autopair
  unixorn/git-extra-commands
  lukechilds/zsh-better-npm-completion
  Ulfada/yadm-zsh
  grigorii-zander/zsh-npm-scripts-autocomplete
  spodin/zsh-fuzzy-wd
  MenkeTechnologies/zsh-cpan-completion
  zsh-users/zsh-autosuggestions
  # zshzoo/cd-ls
  # zsh-contrib/zsh-fzf
  # zdharma-continuum/fast-syntax-highlighting
)

# syntax is GITHUB_USER/REPO_NAME/LOCAL_DIRNAME
# for cases where plugin is not named REPO_NAME.plugin.zsh
special_plugins=(
  TamCore/autoupdate-oh-my-zsh-plugins/autoupdate
  azizoid/zsh-mkcd/mkcd
)

for repo in $external_plugins; do
  if [[ ! -d $ZSH_CUSTOM/plugins/${repo:t} ]]; then
    git clone https://github.com/${repo} $ZSH_CUSTOM/plugins/${repo:t}
  fi
done


for repo in $special_plugins; do
  if [[ ! -d $ZSH_CUSTOM/plugins/${repo:t} ]]; then
    git clone https://github.com/${repo:h} $ZSH_CUSTOM/plugins/${repo:t}
  fi
done

function plugin-update {
  echo $SHELL $TTY
  ZPLUGINDIR=${ZSH_CUSTOM}/plugins
  for d in $ZPLUGINDIR/*/.git(/); do
    echo $SHELL $TTY
    echo "Updating ${d:h:t}..."
    command git -C "${d:h}" pull --ff --recurse-submodules --depth 1 --rebase --autostash
  done
}

# now add your external plugins to your OMZ plugins list
plugins+=(${external_plugins:t})
plugins+=(${special_plugins:t})
zstyle ':omz:plugins:yarn' global-path no
zstyle ':omz:plugins:yarn' berry yes
zstyle ':omz:plugins:yarn' aliases no
zstyle ':omz:plugins:yadm-zsh' aliases no
zstyle ':omz:plugins:archlinux' aliases no
zstyle ':omz:plugins:pip' aliases no
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' silent-autoload yes
zstyle ':omz:plugins:keychain' agents ssh
zstyle ':omz:plugins:keychain' options --nogui --noask --quiet
source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# User configuration
export SUDO_EDITOR=nvim
export EDITOR=nvim

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# setopt extendedglob

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
export poop=`echo 󰇷`
alias ls="lsd -a"
alias yp="yadm push origin main"
alias yd="yadm diff -pM"
alias yc="yadm commit -a -m \"update\""
alias ycm="yadm commit -m"
alias yadd="yadm add "
alias yrm="yadm rm "
alias ys="yadm status"
alias ystat="yadm status"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --decorate --date=short"
alias beetconfig="sudo -u jellyfin beet config -e"
alias beetmodify="sudo -u jellyfin beet -v modify"
alias beetlyrics="sudo -u jellyfin beet -v lyrics -p"
alias beetedit="sudo -u jellyfin beet edit"
alias jupdate="sudo -u jellyfin beet -v jupdate"
alias jelly="sudo -u jellyfin "
alias ytdlconfig="nvim ~/.config/yt-dlp/config"
alias yt-dlm="yt-dlp --config-locations ~/.config/yt-dlp/music.conf "
alias yt-dlv="yt-dlp --config-locations ~/.config/yt-dlp/video.conf "
alias yt-dlmv="yt-dlp --config-locations ~/.config/yt-dlp/musicvideo.conf "
alias yt-dlvh="yt-dlp --config-locations ~/.config/yt-dlp/video.conf --no-playlist"
alias sudo='sudo '
alias toiletpy="toilet -d $PYFIGLET_FONTS "

bindkey -r "^B"                # unbind (optionally)
bindkey '^G' fuzzy_wd_widget   # bind to Ctrl+G

ytdl () {
    yt-dlp --format 18 "$1"
    yt-dlp --format 140 "$1"
}

beetimport () {
    sudo -u jellyfin beet -v import "$1"
}

beetimportL () {
    sudo -u jellyfin beet -v import -L "$1"
}

beetimportA () {
    sudo -u jellyfin beet -v import -A "$1"
}

# set-track-number () {
#     TRACKNUM=$1
#     AUDIOFILE="$2"
#     AUDIOTYPE=$(file -i $AUDIOFILE | awk -F ': ' '{print $2}' | awk -F ';' '{print $1}')
#     if [[ $AUDIOTYPE=="audio/x-m4a" ]]; then
#         mp4tags -t $TRACKNUM "$AUDIOFILE"
#     elif [[ $AUDIOTYPE=="audio/mpeg" ]]; then
#         id3v2 --track $TRACKNUM "$AUDIOFILE"
#     else
#         echo "Not an mp3 or m4a file. Exiting now."
#     fi
# }

tojellymusic () {
    if [[ -d /jellyfin/media/music-library/$1 ]]; then
        sudo cp -uir $1/* /jellyfin/media/music-library/$1/
    else
        sudo cp -r "$1" /jellyfin/media/music-library/
    fi
    sudo chown -R jellyfin:jellyfin /jellyfin/media/music-library
}

tojellymovie () {
    if [[ -n $2 ]]; then
        sudo -u jellyfin cp -n "$1" "/jellyfin/media/movies/$2"
    else
        sudo -u jellyfin cp -n "$1" /jellyfin/media/movies/
    fi
}

tojellyshort () {
    if [[ -n $2 ]]; then
        sudo -u jellyfin cp -n "$1" "/jellyfin/media/shortfilms/$2"
    else
        sudo -u jellyfin cp -n "$1" /jellyfin/media/shortfilms/
    fi
}
yayqua () {
    yay -Qua | awk -F ' ' '{if (($2 != $4) && ($4 != "latest-commit")) print $1" \033[0;32m"$2"\033[0m "$3" \033[1;32m"$4"\033[0m"}'
}

yaygit () {
    yay -Qua | awk -F ' ' '{if ($4 == "latest-commit") print $1}'
}

# eval "$(register-python-argcomplete pipx)"

if [[ -n $SSH_CONNECTION ]] ; then
    [ -z "$TMUX"  ] && { tmux attach -t remote || exec tmux new-session -s remote && exit }
fi

if [[ -n $TMUX_PANE ]] ; then
    Green='\033[0;32m'
    NC='\033[0m'
    echo "*hacker voice*" $Green"i'm in"$NC
fi


giturl () {
    if [[ -n $1 ]];then
        curdir=`pwd`
        cd $1
        echo $VCS_STATUS_REMOTE_URL
        cd $curdir
    else
        echo $VCS_STATUS_REMOTE_URL
    fi
}

gcommit () {
    if [[ -n $1 ]]; then
        git commit -m "$1"
    else
        echo "My sweet summer child, you need a commit message."
    fi
}

gpush () {
    if [[ -n $1 ]];then
        BRANCH=$1
    else
        BRANCH=$VCS_STATUS_REMOTE_BRANCH
    fi
    if [[ -n $VCS_STATUS_REMOTE_NAME ]];then
        # git push $VCS_STATUS_REMOTE_NAME $BRANCH
        printf "push to $VCS_STATUS_REMOTE_NAME $BRANCH [y/N]? > "
        read pushanswer
        case $pushanswer in
            y|yes) git push $VCS_STATUS_REMOTE_NAME $BRANCH
                ;;
            *) echo "okay"
                ;;
        esac
    else
        echo "You aren't in a git repo with a remote"
    fi
}

# bulkrename() {
#     ACTION=$1
#     FILE=$2
#     OLD=$3
#     NEW=$4
#
#     SEDARG="s/$OLD/$NEW/g"
#
#     echo "$FILE"
#     j=`echo "$FILE"| sed $SEDARG`
#     echo "$j"
#     case $ACTION in
#         rename|r) mv "$FILE" "$j";;
#         sim|simulate|*) echo "simulating renaming $FILE to $j";;
#     esac
#
# }

alias gdiff="git diff -pM"
alias gstat="git status"
alias icalibre="calibre-debug -c 'from calibre import ipython; ipython(locals())'"

# updateml () {
#     curl -s "https://archlinux.org/mirrorlist/?country=CA&country=US&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 15 - | sudo tee /etc/pacman.d/mirrorlist.rank
# }

# source /usr/share/doc/find-the-command/ftc.zsh askfirst
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/nvm/init-nvm.sh

if [[ $TTY == "/dev/pts/1" ]] ; then
    hyfetch --distro=arch
else
    hyfetch --backend fastfetch --distro=arch
    Green='\033[0;32m'
    NC='\033[0m'
    echo $Green"hi"$NC
fi

zsh-defer autopair-init

# argc-completions
export ARGC_COMPLETIONS_ROOT="/home/spiritomb/git/argc-completions"
export ARGC_COMPLETIONS_PATH="$ARGC_COMPLETIONS_ROOT/completions"
export PATH="$ARGC_COMPLETIONS_ROOT/bin:$PATH"
# To add a subset of completions only, change next line e.g. argc_scripts=( cargo git )
# argc_scripts=( $(ls -p -1 "$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p') )
argc_scripts=( adb basename bat cat chmod chown chroot cp crontab dd df diff dos2unix du efibootmgr fc-cache fc-cat fc-list ffmpeg flatpak free gpg head jless kill makepkg man mkdir modinfo modprobe pipx pkill ps rm rsync shutdown sort stat sysctl systemctl systemd-analyze tail tee trash-empty trash-list trash-put trash-restore tree uptime yt-dlp yq)
source <(argc --argc-completions zsh $argc_scripts)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
