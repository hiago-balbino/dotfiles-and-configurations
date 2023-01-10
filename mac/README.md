> # **Configurations**

## General [here](../README.md)

* Requirements
  * Python3.x and pip (latest)
  * pynvim library
  * NodeJS (latest)
  * NerdFont (Hack or MesloLGS NF(Regular))
* Copy [_.vimrc_](.vimrc) file to `%USERPROFILE%`
* Run `:PlugInstall` inside `vim`
---

## Terminal on macOS

* iTerm2
* zsh (if not the default on macOS)
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
    * Now launch iTerm2 and let’s configure Powerlevel10k theme using the configuration wizard or run `p10k configure`
* Tango Dark or Gruvbox Dark theme
* Font Hack or MesloLGS NF(Regular)
* Font size 14px
* Configure Status Bar(bottom)
    * Folder
    * CPU
    * Memory
    * Network throughput
    * Branch
