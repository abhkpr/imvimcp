" Basic Settings
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline
set showmatch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamedplus   " Enables system clipboard support

" Plugin Manager (vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'         " File explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'       " Easy commenting
Plug 'jiangmiao/auto-pairs'       " Auto-close brackets
Plug 'itchyny/lightline.vim'      " Status line
Plug 'morhetz/gruvbox'            " Colorscheme

call plug#end()

" Theme
colorscheme gruvbox
set background=dark


" This works in terminals (cterm) and in GUIs (gui), but only sets what the terminal supports
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight NormalNC ctermbg=none
highlight LineNr ctermbg=none
highlight SignColumn ctermbg=none


" Add this to your ~/.vimrc or ~/.config/nvim/init.vim
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton3.cpp


" Compile the current file with g++ and run it
nnoremap <F5> :w<CR>:!g++ -std=c++17 -Wall -Wextra -o %< % && ./%<<CR>


" Trigger only when a new .cpp file is created
autocmd BufNewFile *.cpp call SetupCppFile()

function! SetupCppFile()
  " Make sure there are at least 83 lines
  while line('$') < 9
    call append('$', '')
  endwhile

  " Insert 2 tabs at line 83
  call setline(9, "\t\t")

  " Move to line 83, right after 2 tabs
  execute "normal! 9G2l"

  " Enter insert mode
  startinsert
endfunction


