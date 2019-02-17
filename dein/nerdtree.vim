autocmd vimenter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q! | endif
map <C-n> :NERDTreeToggle<CR>
