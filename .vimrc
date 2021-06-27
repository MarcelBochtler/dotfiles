set spelllang=en

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

augroup custom_filetypesettings
    autocmd!
    au FileType vimwiki,markdown,text,gitcommit setlocal spell
    au FileType gitcommit setlocal tw=72
augroup END

syntax on
set autoindent
set ruler

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

