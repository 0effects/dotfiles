set nocp
set bg=dark
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'   " Status Bar
Plug 'tpope/vim-surround'      " Easily change quotes, parens, etc
Plug 'tpope/vim-sensible'      " Sensible defaults
Plug 'tpope/vim-sleuth'        " Indent detection
Plug 'w0rp/ale'                " Async linting
call plug#end()

filetype plugin indent on
set expandtab " Spaces instead of tabs
set tabstop=4
set shiftwidth=4
