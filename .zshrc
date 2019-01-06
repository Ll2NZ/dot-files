# Configure $PATH
export PATH=$PATH:~/bin

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

# Bare bones web development project file structure
alias create-app="source ~/bin/create-app"

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

# -----------------------------
# Main webpack configuration
# -----------------------------

# Install Webpack
alias webpack="yarn add webpack webpack-dev-server webpack-cli html-webpack-plugin webpack-merge --dev"
alias analyzer="yarn add webpack-bundle-analyzer --dev"
alias clean-webpack="yarn add clean-webpack-plugin --dev"

# CSS and SASS
alias css="yarn add css-loader style-loader mini-css-extract-plugin --dev"
alias sass="yarn add node-sass sass-loader --dev"
alias autoprefixer="yarn add autoprefixer postcss-loader --dev"

# Load Images
alias load-img="yarn add file-loader url-loader --dev"

# Babel
alias babel="yarn add babel-loader @babel/core @babel/preset-env @babel/preset-react @babel/plugin-proposal-class-properties @babel/plugin-transform-runtime --dev"
alias babel-async="yarn add @babel/runtime"
#alias babel-bridge="yarn add babel-core@^7.0.0-bridge.0 --dev"

# Typescript
alias typescript="yarn add typescript ts-loader --dev"

# React, React-Router, Redux
alias react="yarn add react react-dom react-router react-router-dom"
alias react-hot-loader="yarn add react-hot-loader --dev"
#alias redux="yarn add redux react-redux"

# Jest
alias jest-dev="yarn add jest babel-jest react-test-renderer --dev"

# Call all webpack packages at once
alias install-webpack-config="webpack; analyzer; clean-webpack; css; sass; autoprefixer ;load-img; babel; babel-async; typescript; react; react-hot-loader; jest-dev"

# Testing for typescript
#alias ts-test="yarn add ts-jest @types/jest --dev"
