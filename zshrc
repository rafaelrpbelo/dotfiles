# Created by newuser for 5.2

source ~/.zprofile
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias dkcp='docker-compose'
alias grepa='grep --color=always'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto' 

alias chrome='google-chrome-stable'

# Auto start tmux.
#
# Source: https://github.com/sorin-ionescu/prezto/blob/master/modules/tmux/init.zsh
#
#if [[ -z "$SSH_CONNECTION" && -z "$TMUX" && -z "$VIM" ]]; then
#  tmux start-server
#
#  # Create a 'prezto' session if no session has been defined in tmux.conf.
#  if ! tmux has-session 2> /dev/null; then
#    tmux_session='prezto'
#    tmux \
#      #                    new-session -d -s "$tmux_session" \; \
#      #                          set-option -t "$tmux_session" destroy-unattached off &> /dev/null
#  fi
#
#  # Attach to the 'prezto' session or to the last session used.
#  exec tmux attach-session
#fi
