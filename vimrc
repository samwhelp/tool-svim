


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePick
""

function! s:ColorSchemePick () abort

	" ## background
	set background=dark
	"set background=light


	" ## pick colorscheme
	colorscheme gruvbox
	"colorscheme monokai
	"colorscheme onedark
	"colorscheme space_vim_theme


	" ## ubuntu default colorscheme
	" $ dpkg -L vim-runtime | grep colors
	" $ ls /usr/share/vim/vim80/colors/ -1
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print $1}'
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print "\"colorscheme", $1}'

	"colorscheme blue
	"colorscheme darkblue
	"colorscheme default
	"colorscheme delek
	"colorscheme desert
	"colorscheme elflord
	"colorscheme evening
	"colorscheme industry
	"colorscheme koehler
	"colorscheme morning
	"colorscheme murphy
	"colorscheme pablo      			" *
	"colorscheme peachpuff				" *
	"colorscheme ron
	"colorscheme shine
	"colorscheme slate					" *
	"colorscheme torte
	"colorscheme zellner

endfunction


""
""" Tail: ColorSchemePick
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePlug
""


function! s:ColorSchemePlug () abort

	" ## https://github.com/sickill/vim-monokai
	Plug 'sickill/vim-monokai'

	" ## https://github.com/morhetz/gruvbox
	Plug 'morhetz/gruvbox'

	" ## https://github.com/joshdick/onedark.vim
	"Plug 'joshdick/onedark.vim'

	" ## https://www.jianshu.com/p/aadce0fe9649
	" ## https://github.com/liuchengxu/space-vim-theme
	"Plug 'liuchengxu/space-vim-theme'


endfunction

""
""" Tail: ColorSchemePlug
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
""" Head: ConfEnhance
""

function! s:ConfEnhance () abort



endfunction

""
""" Tail: ConfEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEdit_BetterWhitespace
""

function! s:PlugEdit_BetterWhitespace () abort

	" ## https://github.com/ntpeters/vim-better-whitespace
	Plug 'ntpeters/vim-better-whitespace'

endfunction

""
""" Tail: PlugEdit_BetterWhitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfEdit_BetterWhitespace
""

function! s:ConfEdit_BetterWhitespace () abort

	let g:better_whitespace_enabled=1
	let g:strip_whitespace_on_save=1
	let g:strip_whitespace_confirm=0
	let g:better_whitespace_ctermcolor='132'
	"let g:better_whitespace_ctermcolor='222'
	"https://github.com/ntpeters/vim-better-whitespace
	"https://github.com/morhetz/gruvbox

endfunction

""
""" Tail: ConfEdit_BetterWhitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFcitx
""

function! s:PlugFcitx () abort

	" ## https://github.com/lilydjwg/fcitx.vim
	"Plug 'lilydjwg/fcitx.vim'
	Plug 'lilydjwg/fcitx.vim', { 'branch': 'fcitx4' }


endfunction

""
""" Tail: PlugFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFcitx
""

function! s:ConfFcitx () abort

	" :help 'ttimeoutlen'
	set ttimeoutlen=100


endfunction

""
""" Tail: ConfFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugSvim
""

function! s:PlugSvim () abort

	" ## Svim
	" https://github.com/samwhelp/tool-svim-core
	Plug 'samwhelp/tool-svim-core'

	" https://github.com/samwhelp/tool-svim-colorfit
	Plug 'samwhelp/tool-svim-colorfit'

	" https://github.com/samwhelp/tool-svim-core-enhance
	Plug 'samwhelp/tool-svim-core-enhance'

endfunction

""
""" Tail: PlugSvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfSvim
""

function! s:ConfSvim () abort



endfunction

""
""" Tail: ConfSvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackPlugBase
""

function! s:PackPlugBase () abort

	call s:PlugEdit_BetterWhitespace()
	call s:PlugFcitx()
	call s:PlugSvim()

endfunction

""
""" Tail: PackPlugBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackConfBase
""

function! s:PackConfBase () abort

	call s:ConfEdit_BetterWhitespace()
	call s:ConfFcitx()
	call s:ConfSvim()

endfunction

""
""" Tail: PackConfBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfigInControl
""

function! s:ConfigInControl () abort

	call s:PackConfBase()
	call s:ConfEnhance()

endfunction


""
""" Tail: ConfigInControl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginInControl
""

function! s:PluginInControl () abort

	call s:PackPlugBase()
	call s:PlugEnhance()

	call s:ColorSchemePlug()

endfunction


""
""" Tail: PluginInControl
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
		echomsg ' '
		echomsg '+NotInstall: https://github.com/junegunn/vim-plug/'
		echomsg '    # Please install first:'
		echomsg '$ curl -fLo ~/.cache/svim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		return
	endtry

	call s:PluginInControl()

	" Initialize plugin system
	call plug#end()

endfunction

""
""" Tail: PluginManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemeUse
""


function! s:ColorSchemeUse () abort

	try
		call s:ColorSchemePick()
	catch
		" echomsg ' '
		" echomsg '+NotInstall ColorScheme:'
		" echomsg '    # Please install first:'
		" echomsg ':PlugInstall'

		echohl WarningMsg
		echomsg 'ColorScheme is not installed! Please run :PlugInstall'
		echohl None

		return
	endtry

endfunction


function! s:ColorSchemeUseOnVimEnter() abort

	augroup ColorSchemeUse
		autocmd!
		autocmd VimEnter * call s:ColorSchemeUse()
	augroup END

endfunction


""
""" Tail: ColorSchemeUse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! s:Main () abort

	call s:PluginManager('~/.cache/svim/plug')

	call s:ColorSchemeUse()

	"call s:ColorSchemeUseOnVimEnter()

	call s:ConfigInControl()

endfunction

call s:Main()

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Note
""


" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
" $ vim -nNRe -u vim-plug-install.vim

" function! s:TryInstallPlugin () abort
" 	try
" 		PlugInstall
" 	catch
" 		echomsg '!PlugInstall Error!'
" 	finally
" 		qa!
" 	endtry
" endfunction


""
""" Tail: Note
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

