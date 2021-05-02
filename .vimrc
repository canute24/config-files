" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug '~/.vim/vim-airline'
Plug '~/.vim/vim-airline-themes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number
set foldenable
set foldmethod=indent
set shiftwidth=4
set backupdir=D:\TEMP
set dir=D:\TEMP
set laststatus=2
set autoindent
set smartindent
set smarttab
set guifont=Consolas:h12
syntax on
