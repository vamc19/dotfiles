set nocompatible
set backspace=indent,eol,start

" :au BufAdd,BufNewFile * nested tab sball

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"--------------------------- Airline ----------------------------------
" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'
set laststatus=2                    " displays powerline even without splits.
set t_Co=256
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline
let g:airline_powerline_fonts = 1
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 1

"---------------------------- NerdTree -----------------------------------
" File browser
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

"----------------------------- CtrlP -------------------------------------
Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

Plugin 'tomasr/molokai'             " Molokai Color scheme
Plugin 'fatih/vim-go'               " vim-go plugin

call vundle#end()                   " required

set completeopt-=preview

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax on                           " syntax highlighing
filetype on                         " try to detect filetypes
filetype plugin indent on           " enable loading indent file for filetype

set mouse=a

set number                          " Display line number

set tabstop=4                       " Number of spaces to insert for a Tab
set shiftwidth=4                    " Number of spaces to insert for indentation
set expandtab                       " New Tab characters will be changed to spaces
set softtabstop=4                   " Delete correct number of spaces
set shiftround

" Vim on Arch does not come with +clipboard option. Install gvim.
set clipboard=unnamedplus           " system clipboard integration

" persistent
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000


set cursorline

set splitright                                          " Open splits to the right.
set hlsearch                                            " Highlight search terms.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>     " Press space to remove hightlight.

" Code Folding
set foldmethod=indent
set foldlevel=99

" Line limit for Python file
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=Red guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

colorscheme molokai

hi MatchParen ctermfg=208 ctermbg=233 cterm=bold
hi LineNr term=bold cterm=bold ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey
