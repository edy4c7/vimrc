if has('win32')
  if !has('nvim')
    set pythonthreedll=C:/Python37/python37.dll
  endif
  let g:python_host_prog='C:\Python27\python.exe'  
  let g:python3_host_prog='C:\Python37\python.exe'  
endif

set pyxversion=3
