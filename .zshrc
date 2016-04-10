# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

sys_info=`head -n 1 /etc/issue | awk '{print $1}'`

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="bureau"
#ZSH_THEME="amuse"
#ZSH_THEME="fino"
ZSH_THEME="half-life"
#ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(ubuntu sudo bash-autocompletion rsync cp adb git github python virtualenv go nyan)
# autoenv
plugins=(ubuntu autojump sudo bash-autocompletion screen rsync cp copyfile kate copydir
         git github gitignore
         python pip
         go golang docker
         nyan terminitor screen emoji-clock themes battery)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

if [ "$sys_info" = "Ubuntu" ];then
    export GOROOT="/usr/bin"
    export GOPATH="/usr/bin"
else
    export GOROOT=""
    export GOPATH=""
fi

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ "$sys_info" = "Ubuntu" ];then
    fortune | cowsay -f default.cow
    [[ -s /home/song/.autojump/etc/profile.d/autojump.sh ]] && source /home/song/.autojump/etc/profile.d/autojump.sh

fi

if [ "$sys_info" != "Ubuntu" ];then
    alias vim="e"
    alias vi="e"
else
alias vi='vim'
fi

alias scp='nocorrect scp'
alias ems-nw="emacs -nw"
alias e="emacsclient -t -a ''"
alias eb="emacsbare"
alias ec="emacsclient -c -n -a ''"
alias emacsbare="emacs -nw -Q"
alias ems="emacs &"


# alias k_isms="cd ~/isms-kernel-2.8.0"
alias d-isms="cd ~/dpdk_isms"
# git
alias gsm="git push origin master"
alias gsd="git push origin develop"
alias glm="git pull origin master"
alias gld="git pull origin develop"
# work
alias pywhome=""
alias gowhome="cd ~/dnsDefecePlant/adcloud_dns"
alias pymg="cd ~/dnsDefecePlant/adcloud_py/mange"
alias pynd="cd ~/dnsDefecePlant/adcloud_py/node"
alias pywb="cd ~/dnsDefecePlant/adcloud_py/web"
alias k-isms="cd ~/isms-kernel-2.8.0"


if [ "$sys_info" = "Ubuntu" ];then
    alias up-hosts="wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -qO /tmp/hosts && echo \"get end ...\" && sudo mv /tmp/hosts /etc/hosts && echo \"Up ok ...\""
else
    alias up-hosts="wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -qO /tmp/hosts && echo \"get end ...\" && mv /tmp/hosts /etc/hosts && echo \"Up ok ...\""
fi
