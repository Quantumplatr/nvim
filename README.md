# EefVim

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

> Note: This is altered from the LazyVim starter docs.
>
> Also: To be quite honest, I haven't tested a fresh install with this repo.
> you might need to run a lazy install to install everything once you open
> Neovim: `<leader>lI`

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
