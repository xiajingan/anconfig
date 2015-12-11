set nocompatible              "be iMproved, required
filetype off                  "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"The following are examples of different formats supported.
"Keep Plugin commands between vundle#begin/end.
"plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'Command-T'
"Command git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
"Common plugins
"{
"awesome Git wrapper
Plugin 'tpope/vim-fugitive'
"Fast file navigation
"Plugin 'wincent/command-t'
"record coding time.
Plugin 'wakatime/vim-wakatime'
"Tab bar show outline.
Plugin 'Tagbar'
"Auto code complete, Code jump, cdoe error checker.
Plugin 'Valloric/YouCompleteMe'
"Realtime code syntax check.
Plugin 'scrooloose/syntastic'
"Generate .ycm_extra_config.py & .color_coded.
Plugin 'rdnetto/YCM-Generator'
"Realtime tagless code heightlight.
Plugin 'jeaye/color_coded'
"ultisnips engine.
Plugin 'SirVer/ultisnips'
"ultisnips comes without snippets. Default snippets is here.
Plugin 'honza/vim-snippets'
"}
"

"Arduino Syntax
Plugin 'Arduino-syntax-file'

"python plugins
"{
"python code checker. Use <F7> when open a python file.
Plugin 'vim-flake8'
Plugin 'klen/python-mode'
"}

"vim markdown syntax highlight
"{
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
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

syntax on
set nu
set wildmenu
set et
set sta
set sw=4
set ts=4
set foldmethod=indent

map wt :Tagbar<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"UltiSnippets
"{
" Trigger configuration. 
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"}

