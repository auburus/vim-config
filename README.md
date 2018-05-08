# My vim config file

This is a WIP file, as is my life learning vim.

You can look at it, get inspired by it (probably not), and even if
you are more bored than an eskimo in an ice skating club, you may
suggest some improvements through a pull-request.

# Quickinstall
clone this project to the `~/.vim` directory, and run the install.sh file
```
git clone git@github.com:auburus/vim-config.git ~/.vim
~/.vim/install.sh
```

# Manual install
In case the previous one breaks for some reason

### Clone the repository

```
git clone git@github.com:auburus/vim-config.git ~/.vim
```

### Create symlink

You should link your `~/.vimrc` file to `~/.vim/.vimrc`

```
ln -s ~/.vim/.vimrc ~/.vimrc
```

### Install Vundle

Run the following command:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

and after that, launch `vim` and run `:PluginInstall`

