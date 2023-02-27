syntax on
syntax enable
filetype plugin indent on
set clipboard=unnamed
set nu
set laststatus=2


set nu
syntax on
set tabstop=2
set autoindent

call plug#begin('~/vimfiles/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'christoomey/vim-tmux-navigator'

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :belowright terminal<CR>

"autocmd VimEnter * belowright terminal | wincmd p
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" Use release branch (recommend)
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300











set termguicolors
colorscheme gruvbox
set backspace=2
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Cascadia\ Code\ SemiBold:h12
    set guioptions -=m "Hides the menubar
    set guioptions -=T "Hides the toolbar
  endif
endif

"vsplit
"terminal powershell
