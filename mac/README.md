> # **Configurations**

## General [here](../README.md)

* Copy [_.vimrc_](.vimrc) file to `%USERPROFILE%`
* Run `:PlugInstall` inside `vim`
---

## Terminal on MacOS

* [Guide](https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c) to configure _iterm2_ and vim like a PRO
---
* iTerm2
* Powerlevel10k
    * Run the following commands to install Powerlevel10k:
    ```
    $ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    $ echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
    ```
    * Now launch iTerm2 and let’s configure Powerlevel10k theme using the configuration wizard or run `p10k configure`
* Tango Dark or Gruvbox Dark theme
* Font MesloLGS NF(Regular) or Hack
* Font size 14px
* Configure Status Bar(bottom)
    * Folder
    * CPU
    * Memory
    * Network throughput
    * Branch