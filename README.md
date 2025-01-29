# EefVim

## Table of Contents

<!-- mtoc-start -->

* [Description](#description)
* [Preview](#preview)
* [Installation](#installation)
  * [Requirements](#requirements)
    * [figlet](#figlet)
    * [fzf](#fzf)
    * [gh](#gh)
    * [lazygit](#lazygit)
    * [lolcat](#lolcat)
    * [ripgrep](#ripgrep)
    * [toilet-fonts](#toilet-fonts)
  * [Linux/MacOS](#linuxmacos)
  * [Windows](#windows)

<!-- mtoc-end -->

## Description

Based off of the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started from there.

My config handles the following & a bit more:

- Color schemes
- LazyExtras (plugins)
- Mason Installs (e.g. LSPs)
- Tailwind config

## Preview

![dashboard](https://github.com/user-attachments/assets/634b145b-e80d-4721-b491-944d1f3aec71)
![editing](https://github.com/user-attachments/assets/a3385631-2edb-414d-9527-d4f1743b6170)

## Installation

> Note: Some of this is altered from the LazyVim starter docs.
>
> Also: To be quite honest, I haven't tested a fresh install with this repo.
> you might need to run a lazy install to install everything once you open
> Neovim: `<leader>lI`

### Requirements

#### figlet

figlet is used to fancily display the date in the dashboard.

Ubuntu based systems:

```bash
sudo apt install figlet
```

To use more fonts like [bulbhead](http://www.figlet.org/fontdb_example.cgi?font=bulbhead.flf),
download them to `/usr/share/figlet/`.
To install on linux:

```bash
cd ~/.local/share/fonts
curl -O http://www.figlet.org/fonts/bubblehead.flf
sudo cp ~/.local/share/fonts/bubblehead.flf /usr/share/figlet/bubblehead.flf
```

To adjust the dashboard to use the new font, change the relevant commands to use
the new font. For example, the date command in the dashboard could be:

```bash
date -I | figlet -f bubblehead | lolcat
```

#### fzf

fzf is used heavily for searching files, buffers, and more.

Ubuntu based systems:

```bash
sudo apt install fzf
```

#### gh

The GitHub CLI is used in the dashboard to display things like PRs and issues.

Ubuntu based systems:

```bash
brew install gh
```

#### lazygit

Lazygit is used as the git in my neovim setup.

```bash
brew install lazygit
```

#### lolcat

lolcat colors text. This is used in the dashboard to color the date.

Ubuntu based systems:

```bash
sudo apt install lolcat
```

#### ripgrep

ripgrep is used for searching.

Ubuntu based systems:

```bash
sudo apt install ripgrep
```

#### toilet-fonts

toilet-fonts is used to get `pagga` which is used in the dashboard.

```bash
sudo apt install toilet-fonts
```

### Linux/MacOS

1. Make a backup of your current Neovim files:

```bash
# required
mv ~/.config/nvim{,bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. Clone this repo

```bash
git clone https://github.com/Quantumplatr/nvim ~/.config/nvim
```

3. Remove the `.git` folder if you want to add your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

4. Start Neovim

```bash
nvim
```

### Windows

1. Make a backup of your current Neovim files:

```bash
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

2. Clone this repo

```bash
git clone https://github.com/Quantumplatr/nvim $env:LOCALAPPDATA\nvim
```

3. Remove the `.git` folder if you want to add your own repo later

```bash
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

4. Start Neovim

```bash
nvim
```
