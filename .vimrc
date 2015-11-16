" Map physical up/down movement to visual movement
:map j gj
:map k gk

filetype off " required for syntastic

" Allow project specific .vimrc
set exrc

set spell spelllang=en_gb 	" spell-check
set number			" line numbers
set noswapfile			" no swap file
set nobackup			" no backups
set encoding=utf-8		" default encoding
set noerrorbells		" no beeps
set visualbell			" no beeps, just flash
set t_vb=			" no flash
set backspace=indent,eol,start	" powerful backspace
set hlsearch			" highlight searches
set splitbelow			" split horizontal windows below
set splitright			" split vertical windows right
set laststatus=2		" always show the status line
set wrap linebreak nolist
set clipboard=unnamed		" copy paste between system and vim

" Better autocomplete in normal mode
set wildmode=longest,list,full
set wildmenu

:highlight Pmenu ctermbg=238 gui=bold

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline/'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/YankRing.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

let g:SuperTabDefaultCompletionType = "context"

execute pathogen#infect()

" Syntatic config
let g:syntastic_javascript_checkers = ['jshint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<F11>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

