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

"---------------------- Molokayo Color Scheme ----------------------------
Plugin 'tomasr/molokai'

call vundle#end()            " required

set completeopt-=preview

set foldmethod=indent
set foldlevel=99

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

set nu
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set clipboard=unnamed

set cursorline
" hi CursorLine   cterm=NONE ctermbg=Blue
" hi CursorColumn cterm=NONE ctermbg=Red

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
