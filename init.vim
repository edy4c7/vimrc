if has('win32')
  if !has('nvim')
    set pythonthreedll=C:/Python36/python36.dll
  endif
  let g:python_host_prog='C:\Python27\python.exe'  
  let g:python3_host_prog='C:\Python36\python.exe'  
endif

set pyxversion=3

runtime! dein/init.vim
runtime! basic/init.vim
runtime! keymap/init.vim

filetype plugin indent on

