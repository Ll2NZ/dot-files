# ------------------------------------------------------------- #
# Author:  Pablo Lorenzo                                        #
# File:   .zshrc configuration                                  #
# ------------------------------------------------------------- #

# Configure $PATH
# ------------------
export PATH=$PATH:~/bin

# Customize command propmt line
# -----------------------------------
export PS1="%1d%# "

# Common commands used
# -----------------------------------
alias desktop="cd ~/Desktop/"
alias up="cd .."
alias ll="ls -lahG"

# GitHub commands used often
# -----------------------------
alias add="git add ."
alias commit="git commit -m"
alias status="git status"
alias publish="git push -u origin master"
alias new-branch="git checkout -b"

# Bare bones web development project file structure
# -------------------------------------------------------
alias dev-dir="source ~/bin/dev-dir"

# tmux commands
# ---------------------
alias new-session="tmux new -s"
alias attach="tmux attach-session -t"
alias rm-session="tmux kill-session -t"
alias lst="tmux ls"

# Yarn commonly used commands
# -------------------------------------
alias s="yarn run start"
alias b="yarn run build"
alias t="yarn run test"
alias tw="yarn run test:watch"

# Install Webpack
# ------------------
alias webpack="yarn add webpack webpack-dev-server webpack-cli --dev"

# HTML Webpack Plugin; Nodemon; Webpack Merge; Clean Webpack
# -----------------------------------------------------------
alias html-wp="yarn add html-webpack-plugin --dev"
alias nodemon="yarn add nodemon --dev"
alias w-merge="yarn add webpack-merge --dev"
alias clean-webpack="yarn add clean-webpack-plugin --dev"

# CSS; SASS
# -------------
alias css="yarn add css-loader style-loader --dev"
alias sass="yarn add node-sass sass-loader --dev"

# Extract Text; Autoprefixer; Load Images
# -----------------------------------------
alias mini-css="yarn add mini-css-extract-plugin --dev"
alias autoprefixer="yarn add postcss-loader autoprefixer --dev"
alias load-img="yarn add file-loader url-loader --dev"

# Babel; React
# -----------------
alias babel="yarn add babel-loader babel-core babel-preset-env babel-preset-react --dev"
alias react="yarn add react react-dom react-router react-router-dom"

# Jest
# ------
alias jest-dev="yarn add jest babel-jest react-test-renderer --dev"

# Stage-2 JS features
# ---------------------
alias stage-2="yarn add babel-preset-stage-2 --dev"

# Redux
# -------
alias redux="yarn add redux react-redux"

# Call all webpack packages at once
# ----------------------------------
alias install-webpack-config="webpack; html-wp; nodemon; w-merge; clean-webpack; css; sass;
mini-css; autoprefixer; load-img; babel; react; redux; stage-2; jest-dev"