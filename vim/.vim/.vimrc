"swap ; for : in command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
"control + hjkl for new windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"latex support
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

filetype off
call pathogen#incubate()
call pathogen#helptags()
"arduino syntax highlighting
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
"easy to read colorscheme
colorscheme torte
set foldmethod=indent
set foldlevel=99
"gundo for diffs
map <leader>g :GundoToggle<CR>
syntax on
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
"pep8
let g:pep8_map='<leader>8'
" supertab for autocompletions
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
"documentation
set completeopt=menuone,longest,preview
