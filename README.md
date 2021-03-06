Dotfiles for ruby/python development (Tmux, Vim, ZSH) templates along with installation script that automatically link files to their places i.e. `~/.zshrc`

Tested with OSX 10.14 and Ubuntu 18.04

### Installation

Just run make script and all files will be linked to their proper locations:
```sh
make all
```
### Prerequisite
* fzf https://github.com/junegunn/fzf#using-git
* oh-my-zsh https://github.com/robbyrussell/oh-my-zsh#basic-installation
* rbenv https://github.com/rbenv/rbenv#basic-github-checkout
* ruby-build https://github.com/rbenv/ruby-build#upgrading

### Files
* ctags
* git
* gitignore_global
* irbrc
* psqlrc
* ssh
* tmux
* zsh

### `.secret.sh`
Keep all secret data like database connection strings, access tokens in `~/.secret.sh` which got autoloaded if exists.
```
export GIHUB_ACCESS_TOKEN='*********************'
```
This is a right place to hook up ssh keys:
```
[ -f $HOME/.ssh/id_rsa ] && ssh-add $HOME/.ssh/id_rsa >/dev/null 2>&1
```

### VIM
Vim config is not part of this repo. Please use this one: [Vim files](https://github.com/apetrov/vimfiles
