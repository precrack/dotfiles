These are my dotfiles. Should work with Ubuntu 12.x - Ubuntu 13.10, using zsh.

#Installation

 - Clone repo into home folder (<code>~/dotfiles</code>)
 - Run <code>git submodule update --init</code> in the repo folder(Installs Vundle)
 - Copy, or symlink <code>~/dotfiles/.zshrc</code>, <code>~/dotfiles/.vimrc</code>, and <code>~/dotfiles/.vim</code> into your home folder.
 - Execute<code>gnome-terminal-theme.sh</code> to install Tomorrow terminal profile.
 - Open terminal and go to <code>Preferences > Profiles</code> and set Tomorrow to as default.


##Intended to be used with:
###zsh, oh-my-zsh
I reccomend using zsh and oh-my-zsh. If you don't have them installed already, run:
 - <code>sudo apt-get update && sudo apt-get install zsh</code> - Installs zsh
 - <code>chsh -s /bin/zsh</code> - Sets zsh as your default shell
 - <code>curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh</code> - Installs oh-my-zsh

###vim
I use vim as my code editor. This project includes a nice vim config, and vundle setup, so you can extend to your hearts content.

###Nginx
I end up using Nginx a lot, and so the nginx folder includes a wildcard conf file that I like to use for php projects. The <code>.zshrc</code> file contains some nginx aliases as well :) Of course you don't have to use nginx to use these dotfiles.

###Puppet
I'm working on a puppet script that installs all of my packages, and does all of the configuration for you. Stay tuned :)
