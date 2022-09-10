set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
packadd! dracula
colorscheme molotov
hi Normal guibg=NONE ctermbg=NONE
set number
set mouse=r
"#### Column 80 width ####
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


"#### GOYO ####
"autocmd VimEnter * Goyo
map <C-g> :Goyo<CR>
let g:goyo_width = 80
let g:goyo_height = 100
let g:goyo_margin_top = 30
let g:goyo_margin_bottom = 30
" Quitting whether Goyo is active or not
ca wq :w<cr>:call Quit()<cr>
ca q :call Quit()<cr>
function! Quit()
    if winnr('$') > 3
        Goyo
    endif
    quit
endfunction

"#### NERDTREE ####
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/goyo.vim'

" Plugin 'airblade/vim-gitgutter'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

