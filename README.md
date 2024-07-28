# My Custom Neovim Setup

Welcome to my custom Neovim setup! This README will guide you through the installation and configuration of my personalized Neovim environment.

![image](https://github.com/user-attachments/assets/02a252c8-a21e-4a3e-941d-afefeeeb99d0)


## Table of Contents

- [Installation](#installation)
- [Plugins](#plugins)
- [Key Bindings](#key-bindings)
- [Configuration](#configuration)
- [Screenshots](#screenshots)
- [Credits](#credits)

## Installation

To get started with my Neovim setup, follow these steps:

1. **Clone this repository:**
    ```sh
    git clone https://github.com/yourusername/neovim-config.git ~/.config/nvim
    ```

2. **Install Neovim:**
    Follow the [official installation guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) for your operating system.

3. **Install required dependencies:**
    ```sh
    # Install Packer for managing plugins
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
      ~/.local/share/nvim/site/pack/packer/start/packer.nvim

    # Install other dependencies (example for Ubuntu)
    sudo apt-get install ripgrep fd-find
    ```

4. **Install plugins:**
    Open Neovim and run:
    ```vim
    :PackerInstall
    ```

## Plugins

Here are some of the essential plugins included in my setup:

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** Enhanced syntax highlighting.
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim):** Fuzzy finder and picker.
- **[lualine.nvim](https://github.com/hoob3rt/lualine.nvim):** Status line.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):** LSP configurations.
- **[nvim-compe](https://github.com/hrsh7th/nvim-compe):** Autocompletion plugin.

For the full list of plugins, check out my [plugins.lua](./lua/plugins.lua) file.

## Key Bindings

Here are some of my custom key bindings:

- **<leader>ff:** Open Telescope find files.
- **<leader>fg:** Live grep with Telescope.
- **<leader>fb:** Browse buffers with Telescope.
- **<leader>fh:** Help tags with Telescope.

For more key bindings, check out my [keybindings.lua](./lua/keybindings.lua) file.

## Configuration

Here are some highlights of my Neovim configuration:

- **Colorscheme:** Gruvbox
- **Autocomplete:** nvim-compe
- **Linting & Formatting:** LSP and null-ls
- **Status Line:** lualine.nvim

For the full configuration, see my [init.lua](./init.lua) and the files in the `lua/` directory.

## Screenshots

Here are some screenshots of my Neovim setup in action:

![Screenshot](https://github.com/user-attachments/assets/23b00247-8138-466a-8bf3-69ff796485e0)

## Credits

- [Neovim](https://neovim.io/)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Gruvbox](https://github.com/morhetz/gruvbox)
