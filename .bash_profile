# ---- Git current branch config ----
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# ---- Load other bash files if present ----
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.bash_functions ]; then
   source ~/.bash_functions
fi

# ---- PS1 prompt config ----
export PS1=$"\[$txtcyn\]\$(prompt_rvm)🐵💻 \[$txtpur\]\w\[\033[00m\]\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] "

# ---- Exports ----
export SSL_CERT_DIR="/etc/ssl/certs"
export PATH="$PATH:/snap/bin"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$HOME/.poetry/bin"
export PATH="$PATH:/usr/bin/yarn"
export PATH="$HOME/.cargo/bin:$PATH"

# ---- Aliases ----
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias dc="docker-compose"
alias dc-rails-exec="docker-compose exec web bundle exec"
alias dog="highlight -O ansi --force"
alias dog-bash="dog --syntax=bash"
alias ngrok="~/Applications/ngrok"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# ---- Virtualenvwrapper config ----
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.8
source ~/.local/bin/virtualenvwrapper.sh
export WORKON_HOME="$HOME/.virtualenvs"

# ---- NVM config ----
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ---- RVM config ----
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Must be placed last in .bash_profile
