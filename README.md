# ⚙️ **Configurations**

## @nvim
* Requirements
   * Install some [NerdFont](https://www.nerdfonts.com/font-downloads)(ex: MesloLG Nerd Font)
   * Ripgrep
   * Build essentials on linux(`sudo apt install build-essentials`)
* Install neovim >= 0.9.* (from source)
   * Ensure that `.local/share/nvim` and `.cache/nvim` does not exist
   * Download tarball file
   * Extract `tar xvzf <tarball-file>`
   * Move extracted file to `/usr/local/bin`
   * Create symbolic link `ln -s ./<extracted-file>/bin/nvim ./nvim`
   * Install [Packer](https://github.com/wbthomason/packer.nvim)(Plugin Manager to neovim)
   * Install language server
   * Copy [base files](/nvim) to `.config/nvim/`
   * Command to install dependencies: `PackerSync`
   * `:Mason`(use `'i'` to install)

## @vim

* Requirements
  * Python3.x and Pip (latest)
  * Pynvim library
  * NodeJS (latest)
  * Install some [NerdFont](https://www.nerdfonts.com/font-downloads)(ex: MesloLG Nerd Font)
* Install vim based on SO
   * This may ask to install Vim Plugin Manager
* Copy [base file](/vim/.vimrc) to `%HOME%`
* Command to install dependencies: `:PlugInstall`

## @GoLand & @IntelliJ
   * Darcula or Gruvbox Dark theme
   * Font [Hack](https://www.wfonts.com/font/hack)

## @Visual Studio Code
   * Dark+ (default dark) or Gruvbox Dark theme