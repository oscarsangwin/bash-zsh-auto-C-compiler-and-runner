# bash-zsh-auto-C-compiler-and-runner
CAR Command (Compiler And Runner) is a simple shell script to compile a C script, run it, and then optionally delete it after. It saves a lot of typing when coding in C.

It works with both BASH and ZSH, and for best use, should be put in a directory of executables that is in PATH.

Usage: car <filename>

The optional delete after is commented out, as you can see in the code. This is because using rm is potentially dangerous, especially if the parameters provided are absolute file paths.

**To add car.sh to PATH:**
- Navigate to home directory: cd ~
- Open either .zshrc or .bashrc with a text editor
- At the bottom of the file add the following: 
  \# Add parent folder of script to PATH
  export PATH=$PATH:<location-of-executables-folder> # Exmple of folder location: ~/Documents/my-bash-scripts
