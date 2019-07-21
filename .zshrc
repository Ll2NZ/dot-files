# Customize command propmt line
export PS1="%1d%# "

# Common commands used
alias de="cd ~/Desktop/"
alias up="cd .."
alias ll="ls -lahG"
alias nv="nvim ."

# GitHub commands used often
alias add="git add ."
alias commit="git commit -m"
alias status="git status"
alias publish="git push -u origin master"
alias new-branch="git checkout -b"
alias co="git checkout"

# tmux commands
alias new-session="tmux new -s"
alias attach="tmux attach-session -t"
alias rm-session="tmux kill-session -t"
alias lst="tmux ls"

# Yarn commonly used commands
alias d="yarn run dev"
alias p="yarn run prod"
alias t="yarn run test"
alias tw="yarn run test:watch"
