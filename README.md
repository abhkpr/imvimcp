# imvimcp
## Competitive Programming Vim Config

A minimalist, performance-focused Vim configuration designed specifically for competitive programming in C++. Features rapid compile/run workflow, template autoloading, essential plugins, and a distraction-free coding environment.

---

## Features

- Smart defaults (relative line numbers, auto-indent, system clipboard)
- Compile & run C++17 files with `<F5>`
- Auto-insert C++ template for new `.cpp` files
- Fuzzy file search via `fzf`
- Clean, low-contrast UI using `gruvbox`
- Essential plugins only (tree, pairs, statusline, commenting)

---

## Quick Start

```bash
# 1. Clone this repo
git clone https://github.com/yourusername/your-repo-name.git

# 2. Copy the .vimrc to your home directory
cp your-repo-name/.vimrc ~/.vimrc

# 3. Install vim-plug (if not already installed)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 4. Open Vim and install plugins
vim +PlugInstall +qall
