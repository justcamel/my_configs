"Set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'plasticboy/vim-markdown'

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

"set tabstop=2
"set shiftwidth=2 softtabstop=2
set softtabstop=2 
set expandtab
"set ignorecase 
set incsearch hlsearch
"set cindent
set autoindent
set exrc
set secure
"set foldcolumn=1
"set listchars=tab:▸\ ,eol:¬
set backspace=indent,eol,start " delete over line breaks, automatically-inserted indentation
set ruler " visible status bar 
set gcr=n:blinkon0 " no blinking in normal mode
syntax on
set enc=utf-8
set ls=2 " always show status bar
set scrolloff=2 " search result has 2 lines above and below
execute pathogen#infect()
let g:jedi#completions_command = "<C-Space>"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
highlight Pmenu guibg=brown gui=bold
hi SpellBad ctermfg=235 ctermbg=202 guifg=#262626 guibg=#ff5f00
"hi SpellCap ctermfg=www ctermbg=xxx guifg=#yyyyyy guibg=#zzzzzz
colorscheme solarized
set number
highlight LineNr ctermfg=blue ctermbg=white
"set noexpandtab
set mouse=a
highlight BookmarkSign ctermbg=NONE ctermfg=160
"highlight BookmarkLine ctermbg=blue ctermfg=NONE
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '⚑'
let g:bookmark_highlight_lines = 1

" Hotkey for NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
"set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
"set guifont=Ubuntu\ Mono\ for\ Powerline\ 12


"
" YouCompleteMe options
"

let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_add_preview_to_completeopt = 1  "show preview window on completion suggests
let g:ycm_add_preview_to_completeopt = 1  "close preview window on completions suggest chosen

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 1 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'


nnoremap <F5> :YcmForceCompileAndDiagnostics <CR>
nnoremap <F2> :YcmCompleter GoToDefinition <CR>
nnoremap <C-B> :wa <CR> :make <CR>
"nnoremap <C-S-B> :wa <CR> :!make clean <CR> :make <CR>
"
"switch between source and header files
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR> 
set shiftwidth=2
"set background=dark
set splitright
set splitbelow
