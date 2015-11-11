if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" General Plugins
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'

" Ruby/Rails Plugins
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dotenv'

" SCM Plugins
Plug 'tpope/vim-fugitive'
Plug 'nfvs/vim-perforce'

" Colorscheme Plugins
Plug 'altercation/vim-colors-solarized'

" Syntax Plugins
Plug 'wting/rust.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'elzr/vim-json'

call plug#end()

syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2

let g:airline_powerline_fonts=1

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
end
