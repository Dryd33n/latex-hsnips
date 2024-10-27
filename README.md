# Latex Hyper Snips
This repository contains snippets for use in VSCode alongside [Orange X4's Hypersnips for Math](https://github.com/OrangeX4/hsnips). By splitting up the snippet files they can be more easily managed organized which is the aim of this. A simple shell script is included to compile into one ```LaTex.hsnips``` file.


## Usage
The following are instructions for setup:
### Set Snippet Path
In the extensions settings for hyper snips for math, make sure to set the snippet directory to ```/latex-hsnips/out/``` or where ever you choose to clone this so long as the ```/out/``` folder is set as the snippet directory. This is where the shell script will build to.

### Writing Snippets
In the ```/latex-hsnips/snips/``` directory place individual files each containing some snippets for LaTex. Seperating them into categories can make it easier to manage and organizing them. I like to seperate each category of snippets into it's own file. 

### Building Snippets
In the same directory as the shell script, open the terminal, you will need some way to use bash such as git bash, WSL, etc. Then you can run ```.\"build snips"``` this will concatenate all of the seperate files in the ```/snips/``` folder into one ```/out/LaTex.hsnips```
