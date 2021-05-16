"""""""""""""""""""""""""""""""""""""
"Vim-Plugged plugin manager specific"
"""""""""""""""""""""""""""""""""""""
"" Plugins will be downloaded under the specified directory.
call plug#begin('~/Documents/Programs/vim/vim-plug')

"" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'haya14busa/incsearch.vim'
"Plug 'SirVer/ultisnips'
"
"" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" Above command automatically executes filetype plugin indent on and syntax enable

""""""""""""
"Appearance"
""""""""""""
set guifont=Consolas:h11
colorscheme monokai
set number
set foldenable
set foldmethod=indent

"Indentation settings"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set smarttab

"Highlighting:"
"""""""""""""""
"Column indicator for long lines"
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

"Searching:"
set incsearch
set hlsearch
" Use Esc to clear highlights
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

"Syntax Highlighting"
"syntax on
filetype plugin on

"""""""""""
"Behaviour"
"""""""""""
set laststatus=2

"Setting Paths"
"set backupdir=D:\TEMP
"set dir=D:\TEMP

"Embedded Development"
""""""""""""""""""""""
"Forces Vim to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration"
"set exrc

"Since Vim will source .vimrc from any directory you run Vim from, this is a potential security hole; so, you should consider setting secure option. This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed."
set secure

"File type detection to change *.c files to pure C instead of C++ with doxygen highlighting"
"augroup project
"  autocmd!
"  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
"augroup END

"Additional paths for header file searches etc. The second command changes all . to / to open header files"
"let &path.="src/include,/usr/include/AL,"
"set includeexpr=substitute(v:fname,'\\.','/','g')

"Configue build command and set key binding for it on next line. ! mark prevents Vim from jumping to location of first error found"
"set makeprg=make\ -C\ ../build\ -j9
"nnoremap <F4> :make!<cr>
