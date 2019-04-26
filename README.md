# create-app shell script
```zsh
# pass in the name of your new react project
create-app my-react-app
```

# setting up the shell script
```zsh
# 1. make sure you're in your user directory and create a new bin directory
cd ~/
mkdir bin
cd bin
```

```zsh
# 2. create a new file create-app and make sure it's an executable
touch create-app
chmod u+x create-app # will make it an executable

# now copy the contents of the file create-app in the repo into the file you just created above (create-app)
```

```zsh
# 3. create a new file webpack-packages and make sure it's an executable
touch webpack-packages
chmod u+x webpack-packages # will make it an executable

# again, copy the contents of the file webpack-packages into the file you just created above (webpack-packages)
```

```zsh
# 4. create a new file package.json and copy the contents of the file
# package.json in the repo to your newly created package.json
touch package.json
```

```zsh
# 5. clone the following repo at `https://github.com/Ll2NZ/webpack-template` and place in inside the `bin` directory
#    note: make sure to rename the repo to webpack-template after you clone it!
git clone https://github.com/Ll2NZ/webpack-template.git
```

```zsh
# 6. go back into the user directory
cd ~/
```

```zsh
# 7. now, open .bashrc file and place the following two lines of code (if .bashrc isn't there, make one!)
export PATH=$PATH:~/bin
alias create-app="source ~/bin/create-app"
```

# now you have access to the command `create-app`
```zsh
# anytime you want to create a new react project, just open your terminal and do the following
create-app name-of-project
```
