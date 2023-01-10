> # **Configurations**

## General [here](../README.md)

* Pre-requirements
  * Python3.x and pip (latest)
  * pynvim library
  * NodeJS (latest)
  * NerdFont (Hack)
* Copy [_.vimrc_](.vimrc) file to `%USERPROFILE%`
* Run `:PlugInstall` inside `vim`
---

## Terminal on Linux

* Install and configure your default terminal as `zsh`
    ```
    apt-get install zsh
    ```
* Install [oh-my-zsh](https://ohmyz.sh)
    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
* Powerlevel10k
    * Run the following commands to install Powerlevel10k:
    ```
    $ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    $ echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
    ```
    * Now launch zsh and let’s configure Powerlevel10k theme using the configuration wizard or run `p10k configure`
* Tango Dark or Gruvbox Dark theme
* Font Hack
* Font size 14px
