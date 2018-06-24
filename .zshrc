# Base16 Shell, for coloring asthetic
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
# fix colors in tmux
export TERM="xterm-256color"
if [ "$TMUX" = "" ]; then tmux -2; fi

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Case sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export PATH=~/Library/Python/3.6/bin:$PATH

autoload -U promptinit; promptinit

# set pureshell prompt
prompt pure

# automatically generated by fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# configure fasd
#eval "$(fasd --init auto)"

# tab completion for colorls
#source $(dirname $(gem which colorls))/tab_complete.sh
#alias ls=colorls
#alias l="colorls -lA --sd"
alias devup="sudo ansible-pull -U https://github.com/kevintpeng/dev-environment-as-code.git --extra-vars username=$(whoami)"

# pretty print json strings
alias json="python -m json.tool"

# taskwarrior aliases
alias in='task add +in'

# taskwarrior show number of pending inbox items in GTD
export PS1='$(task +in +PENDING count) '$PS1

# taskwarrior wait cmd alias
tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}
alias tick=tickle

alias t=task
alias tw="task +@work add"

read_next(){
  if [ $# -eq 0 ]; then
    task_id=$(t read rc.verbose=nothing limit:1 rc.reports.read.columns:id)
  else
    task_id=$1
  fi 
  task_url=$(t _get ${task_id}.url)
  if [ -z "$task_url" ]; then
    echo "Error: Task #${task_id} does not have a url"
  else
    open $task_url -a Google\ Chrome
    task $task_id start
  fi 
}

alias trd=read_next

webpage_title (){
    curl "$*" | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si'
}

taskwarrior_add_to_reading_backlog (){
    link="$1"
    title=$(webpage_title $link)
    echo $title
    descr="\"Read and review: $title\""
    id=$(task add +read +article "$descr" url:$link | sed -n 's/Created task \(.*\)./\1/p')
}

alias rbl=taskwarrior_add_to_reading_backlog

# modify history settings
setopt hist_ignore_dups share_history inc_append_history extended_history

#disable auto correct
unsetopt correct_all

# Load any unsynchronized local zshrc configurations and settings
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# set shell color
base16_default-dark

