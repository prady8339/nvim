# Neovim Setup

## MacOS Setup

1. Install Homebrew Refer https://brew.sh/

2. Install Neovim

3. Install Nerd font
profiles > text > Change font to Nerd font

4. Install bat

5. Clone Neovim config


## Commands

```bash
brew install neovim
brew install --cask font-jetbrains-mono-nerd-font
brew install bat
git clone https://github.com/prady8339/nvim ~/.config/nvim && nvim
```

## Linux Setup

1. Update system packages

2. Install Neovim

3. Install Nerd Font
Go to terminal preferences > set font to Nerd Font

4. Install bat

## Commands


```bash
# Update system
sudo apt update && sudo apt upgrade -y      # Ubuntu/Debian
# or
sudo pacman -Syu                            # Arch

# Install Neovim
sudo apt install neovim -y                  # Ubuntu/Debian
# or
sudo pacman -S neovim                       # Arch

# Install Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv

# Install bat
sudo apt install bat -y                     # Ubuntu/Debian
echo "alias bat='batcat'" >> ~/.bashrc      # only if needed
source ~/.bashrc
# or
sudo pacman -S bat                          # Arch

# Clone Neovim config
git clone https://github.com/prady8339/nvim ~/.config/nvim && nvim

```
## Windows Setup
![operation-completed-succesfully-error-funny-error-messages](https://github.com/user-attachments/assets/85bbd771-8cdb-49a8-8b2a-171a6c2790d4)

