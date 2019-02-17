let s:dein_dir = expand('~/vimfiles/bundles')
let s:dein_rc_dir = expand('<sfile>:p:h')

if has('win32')
	let s:dein_repo_dir = s:dein_dir . '\repos\github.com\Shougo\dein.vim'
	let s:dein_installer = s:dein_dir . 'dein_installer.sh'
	let s:dein_toml = s:dein_rc_dir . '\plugins.toml'
	let s:dein_lazy_toml = s:dein_rc_dir . '\plugins.lazy.toml'
	let s:dein_nvim_toml = s:dein_rc_dir . '\plugins.nvim.toml'

	" s:dein_repo_dir = SwapPath(s:dein_repo_dir)
	" s:dein_toml = SwapPath(s:dein_toml)
	" s:dein_lazy_toml = SwapPath(s:dein_lazy_toml)

	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim ' . s:dein_repo_dir
	endif
else
	let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
	let s:dein_installer = s:dein_dir . 'dein_installer.sh'
	let s:dein_toml = s:dein_rc_dir . '/plugins.toml'
	let s:dein_lazy_toml = s:dein_rc_dir . '/plugins.lazy.toml'
	let s:dein_nvim_toml = s:dein_rc_dir . '/plugins.nvim.toml'

	if !isdirectory(s:dein_repo_dir) 
		execute '!mkdir ' . s:dein_dir 
		\.'&& curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ' . s:dein_installer
		\.'&& sh ' . s:dein_installer . '  ' . s:dein_dir
		\.'&& rm -f ' . s:dein_installer
	endif
endif

execute 'set runtimepath+=' . s:dein_repo_dir 

if !dein#load_state(s:dein_dir)
	finish
endif

call dein#begin(s:dein_dir)
call dein#add('Shougo/dein.vim')
call dein#load_toml(s:dein_toml, {'lazy': 0})
call dein#load_toml(s:dein_lazy_toml, {'lazy': 1})
call dein#end()
call dein#save_state()

if dein#check_install()
    call dein#install()
endif

function SwapPath(path)
	return substitute(path, "\/", '\', 'eg')
endfunction
