execute pathogen#infect()

syntax enable
filetype plugin on
filetype indent plugin on

set nocompatible
set background=dark


set path+=**

set wildmenu
set nu 
set relativenumber 
set modeline
set expandtab 
set autoindent
set shiftwidth=2 
set tabstop=2 
set softtabstop=2 

command! MakeTags !ctags -R .

" Syntastic Setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_w = 0

" NetRW Setup
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NetRW window Size
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
  autocmd VimEnter * :vert resize 30 
  autocmd VimEnter * :set winfixwidth
augroup END


" Powerline Setup
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

