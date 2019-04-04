

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugColorScheme
""


function! s:PlugColorScheme () abort
	" ## https://github.com/sickill/vim-monokai
	Plug 'sickill/vim-monokai'

	" ## https://github.com/morhetz/gruvbox
	Plug 'morhetz/gruvbox'



endfunction

""
""" Tail: PlugColorScheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEnhance
""

function! s:PlugEnhance () abort

	" Add extra plugin here
	" ## https://github.com/scrooloose/nerdtree
	"Plug 'scrooloose/nerdtree'





endfunction

""
""" Tail: PlugEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFcitx
""

function! s:PlugFcitx () abort

	" ## https://github.com/lilydjwg/fcitx.vim
	Plug 'lilydjwg/fcitx.vim'

	" :help 'ttimeoutlen'
	set ttimeoutlen=100


endfunction

""
""" Tail: PlugFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugSvim
""

function! s:PlugSvim () abort

	" ## Svim

	" ## https://github.com/samwhelp/tool-svim-core
	Plug 'samwhelp/tool-svim-core'

	" ## https://github.com/samwhelp/tool-svim-colorfit
	Plug 'samwhelp/tool-svim-colorfit'

endfunction

""
""" Tail: PlugSvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginManager
""

function! s:PluginManager (dir_path) abort

	" :help internal-variables

	let l:site_rtp_dir_path = '~/.cache/svim/site'
	"let &runtimepath .= ',' . l:site_rtp_dir_path
	let &runtimepath = l:site_rtp_dir_path . ',' . &runtimepath


	try
		" https://github.com/junegunn/vim-plug/
		" Specify a directory for plugins
		" - For Neovim: ~/.local/share/nvim/plugged
		" - Avoid using standard Vim directory names like 'plugin'
		call plug#begin(a:dir_path)
	catch
		echomsg 'NotInstall: https://github.com/junegunn/vim-plug/'
		echomsg 'Please install first:'
		echomsg '$ curl -fLo ~/.cache/svim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		return
	endtry

	call s:PlugEnhance()

	call s:PlugColorScheme()
	call s:PlugFcitx()
	call s:PlugSvim()

	" Initialize plugin system
	call plug#end()


endfunction

""
""" Tail: PluginManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! s:TryInstallPlugin () abort
	try
		PlugInstall
	catch
		echomsg '!PlugInstall Error!'
	finally
		qa!
	endtry
endfunction


function! s:Main () abort

	call s:PluginManager('~/.cache/svim/plug')

	call s:TryInstallPlugin()

endfunction

call s:Main()

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
