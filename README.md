# My neovim config

# Dependencies

The dependencies are:
- gcc
- make
- ripgrep (rg)
- rustfmt (cargo install rustfmt)
- silicon
- a nerd font and a terminal that suports it (TODO: add a nerd font toggle for tty use)

If you are using arch linux, these can be installed using:
```
pacman -S gcc base-devel ripgrep
cargo install silicon rustfmt
```

# Installation

Backup any old config:
```
mv ~/.config/nvim ~/.config/old-nvim
```

Clear the nvim cache:
```
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```
Clone the new config:
```
git clone https://github.com/bg16-2009/nvim-config.git ~/.config/nvim
```
