" various
filetype plugin indent on  " enable file type detection
syntax enable

" settings
set textwidth=80
set autoindent  " follow indentation of last line
set autoread  " auto-detect file changes
set backspace=2
set clipboard+=unnamed  " use the normal clipboard
set completeopt=menuone  " autocompletion popup menu
set equalalways
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set foldcolumn=4  " width of the column used to indicate folds
set foldlevelstart=42  " no closed folds at start
set foldmethod=indent  " automatic folding of indented blocks
set foldnestmax=3  " maximum number of nested folds
set gdefault  " substitution is done on all matches in a line
set guicursor+=a:blinkon0  " Diaspar's central computer does not blink
set guifont=monospace\ 11
set guioptions+=a  " visual selection goes to clipboard
set guioptions-=e  " better looking window tabs
set guioptions-=L  " remove left-hand scroll
set guioptions-=m  " remove menu bar
set guioptions-=r  " remove right-hand scroll
set guioptions-=T  " remove toolbar
set helplang=  " inglés por favor
set hlsearch  " highlight search matches
set ignorecase  " search is case-insensitive
set incsearch  " highlight search matches while typing
set linebreak  " break at words instead of chars when wrap is on
set nobackup  " do not hold backups after the file is written to
set nobomb  " without BOM
set nocindent  " cindent does not behave well with js
set noerrorbells visualbell t_vb=
set number
set omnifunc=syntaxcomplete#Complete  " native auto-completion
set ruler
set shell=/bin/bash  " prevent fish from taking over
set shiftround  " < and > go for multiples of shiftwidth
set shiftwidth=4  " width of indentation
set showtabline=2  " always show tab page labels
set smartcase  " if capital letter, search is case-sensitive
set smarttab
set splitbelow  " new :split is below current
set splitright  " new :vsplit is to the right of the current
set tabstop=4
set wildmenu  " enhanced auto-completion for the command line
set wrap  " do not overflow horizontally
set writebackup  " create backup file while editing

" .. conditional settings
if has('win32') || has('win32unix')
	set guifont=Consolas:h11
endif

" .. global variables
let g:netrw_liststyle=3  " good tree


" key mappings
" .. browser-like tabs
nnoremap  <c-tab> 		:tabnext<cr>
nnoremap  <c-s-tab> 	:tabprevious<cr>
nnoremap  <c-t> 		:tabnew<cr>
inoremap  <c-tab> 		<esc>:tabnext<cr>i
inoremap  <c-s-tab> 	<esc>:tabprevious<cr>i
inoremap  <c-t> 		<esc>:tabnew<cr>

" .. no habit should die!
inoremap  <c-s>			<esc>:w<cr>
nnoremap  <c-s>			:w<cr>

" .. easier :noh
nnoremap  <leader><space>	:noh<cr>

" .. spells
nnoremap  <leader>bg	:setlocal spell! spelllang=bg<cr>
nnoremap  <leader>de	:setlocal spell! spelllang=de<cr>
nnoremap  <leader>en	:setlocal spell! spelllang=en_gb<cr>

" .. IPA
inoremap  <c-p>			<nop>

inoremap  <c-p>td		t̪
inoremap  <c-p>dd		d̪
inoremap  <c-p>tr		ʈ
inoremap  <c-p>dr		ɖ
inoremap  <c-p>j-		ɟ
inoremap  <c-p>gg		ɡ
inoremap  <c-p>gl		ʔ

inoremap  <c-p>nd		n̪
inoremap  <c-p>nr		ɳ
inoremap  <c-p>nj		ɲ
inoremap  <c-p>ng		ŋ

inoremap  <c-p>rt		ɾ
inoremap  <c-p>rr		ɽ

inoremap  <c-p>fi		ɸ
inoremap  <c-p>th		θ
inoremap  <c-p>dh		ð
inoremap  <c-p>sd		s̪
inoremap  <c-p>zd		z̪
inoremap  <c-p>sh		ʃ
inoremap  <c-p>zh		ʒ
inoremap  <c-p>sr		ʂ
inoremap  <c-p>zr		ʐ
inoremap  <c-p>ga		ɣ
inoremap  <c-p>hv		ɦ

inoremap  <c-p>lz		ɮ

inoremap  <c-p>vl		ʋ

inoremap  <c-p>lb		ɬ
inoremap  <c-p>lr		ɭ
inoremap  <c-p>ly		ʎ

inoremap  <c-p>-)		 ͡
inoremap  <c-p>-(		 ͜

inoremap  <c-p>I		ɪ
inoremap  <c-p>i-		ɨ
inoremap  <c-p>up		ʊ
inoremap  <c-p>o-		ɵ
inoremap  <c-p>yy		ə
inoremap  <c-p>ep		ɛ
inoremap  <c-p>uv		ʌ
inoremap  <c-p>oc		ɔ
inoremap  <c-p>ae		æ
inoremap  <c-p>ao		ɑ
inoremap  <c-p>oa		ɒ

inoremap  <c-p>-h		ʰ
inoremap  <c-p>-d		 ̯
inoremap  <c-p>-w		ʷ
inoremap  <c-p>-j		ʲ
inoremap  <c-p>-~		 ̃
inoremap  <c-p>-n		ⁿ

inoremap  <c-p>-'		ˈ
inoremap  <c-p>-:		ː
inoremap  <c-p>-.		ˑ
inoremap  <c-p>--		 ̆


" event hooks
" .. start with a maximised window
if has('gui_running')
	colorscheme slate
 	syntax on
	set hlsearch
  	set bs=2
  	set ai
  	set ruler
	set guifont=Monaco:h12
  	
	if has('win32') || has('win32unix')
		" autocmd GUIEnter * simalt ~x
		" gvimfullscreen_win32
		autocmd GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
	else
		autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
	endif
endif

" .. recognise certain file extensions
augroup bufread_mako
	autocmd!
	autocmd BufRead,BufNewFile *.mako set filetype=html
augroup END

" .. css
augroup filetype_css
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType css nnoremap <buffer> <localleader>c mCI/* <esc>A */<esc>`Clll
augroup END

" .. javascript
augroup filetype_javascript
	autocmd!
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType javascript nnoremap <buffer> <localleader>c mCI// <esc>`Clll
	autocmd FileType javascript setlocal foldmethod=marker
	autocmd FileType javascript setlocal foldmarker={,}
	autocmd FileType javascript setlocal foldtext=GetCleanFoldText()
augroup END

" .. java
augroup filetype_java
	autocmd!
	autocmd FileType java nnoremap <buffer> <localleader>c mCI// <esc>`Clll
	autocmd FileType java setlocal foldmethod=marker
	autocmd FileType java setlocal foldmarker={,}
	autocmd FileType java setlocal foldtext=GetCleanFoldText()
augroup END

" .. python
augroup filetype_python
	autocmd!
	autocmd FileType python setlocal omnifunc=jedi#completions  " because g:jedi#completions_enabled=0
	autocmd FileType python nnoremap <buffer> <localleader>c mCI# <esc>`Cll
	autocmd FileType python nnoremap <buffer> <localleader>C g_F#xx
augroup END

" .. rust
augroup filetype_rust
	autocmd!
	autocmd FileType rust nmap <localleader>d <Plug>(rust-def-split)
	autocmd FileType rust nmap K <Plug>(rust-doc)
augroup END

" .. tsv
augroup filetype_tsv
	autocmd!
	autocmd BufRead,BufNewFile *.tsv setlocal tabstop=16
augroup END


" functions
" .. defines the folded line content
function! GetCleanFoldText()
	let line = getline(v:foldstart)
	let line = substitute(line, "\t", "    ", 'g')
	return line
endfunction

" .. function to delete current file's view
" .. http://www.vim.org/scripts/script.php?script_id=5109
function! DeleteView()
	let path = fnamemodify(bufname('%'),':p')
	let path = substitute(path, '=', '==', 'g')
	if empty($HOME)
	else
		let path = substitute(path, '^'.$HOME, '\~', '')
	endif
	let path = substitute(path, '/', '=+', 'g') . '='
	let path = &viewdir.'/'.path
	call delete(path)
	echom "Deleted: ".path
endfunction

" .. better (albeit not PEP8-compliant) indentation for python: tabs
function! DisablePEP8()
	setlocal noexpandtab
	setlocal softtabstop=0
	setlocal tabstop=4
endfunction

" .. reverts to the values suggested in ftplugin/python.vim
function! EnablePEP8()
	setlocal expandtab
	setlocal softtabstop=4
	setlocal tabstop=8
endfunction


" plugins
" .. vim-plug
call plug#begin('~/.vim/plugged')

Plug 'derekmcloughlin/gvimfullscreen_win32'
Plug 'editorconfig/editorconfig-vim'
Plug 'gregsexton/MatchTag'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'mtth/scratch.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

Plug 'chr4/nginx.vim', {'for': 'nginx'}
Plug 'dag/vim-fish', {'for': 'fish'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'LaTeX-Box-Team/LaTeX-Box', {'for': 'tex'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'racer-rust/vim-racer', {'for': 'rust'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'tpope/vim-fireplace', {'for': 'clojure'}

call plug#end()

" .. ack
if executable('ag')
	let g:ackprg = "ag --vimgrep"  " ag, in fact
endif

nnoremap  <leader>a		:Ack!

" .. ctrlp
let g:ctrlp_by_filename = 0  " <c-d> off by default
let g:ctrlp_regexp = 0  " <c-r> off by default
let g:ctrlp_switch_buffer = ''  " always open a new buffer
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard']

" .. editorconfig
let g:EditorConfig_max_line_indicator = "exceeding"

" .. goyo
let g:goyo_width=83

nnoremap  <leader>q		:Goyo<cr>

" .. gundo
let g:gundo_prefer_python3=1  " problems with transition to 3
let g:gundo_help=0  " disable help text

nnoremap  <leader>u 	:GundoToggle<cr>

" .. jedi
let g:jedi#auto_vim_configuration = 0  " do not overwrite completeopt
let g:jedi#show_call_signatures = 0  " do not show the args of completed func
let g:jedi#completions_enabled = 0  " neocomplete handles that
let g:jedi#use_splits_not_buffers = 'winwidth'  " open defs in new splits
let g:jedi#force_py_version = 3  " use python3
let g:jedi#smart_auto_mappings = 0  " do not auto-complete import statements
let g:jedi#goto_stubs_command = ""  " do not shadow scratch's mapping

" .. latex-box
let g:LatexBox_Folding=1  " enable folding
let g:LatexBox_latexmk_options="-xelatex"

" .. neocomplete (former neocomplcache)
if has('lua')
	let g:neocomplete#enable_at_startup=1  " start it
	let g:neocomplete#enable_ignore_case=0  " case-sensitive
	let g:neocomplete#enable_fuzzy_completion=0  " and exact
	let g:neocomplete#max_list=20  " max number of suggestions

	if !exists('g:neocomplete#force_omni_input_patterns')
		let g:neocomplete#force_omni_input_patterns = {}
	endif

	let g:neocomplete#force_omni_input_patterns.python =
	\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

	let g:neocomplete#force_omni_input_patterns.tex =
	\ '\v\\\a*(ref|cite)\a*([^]]*\])?\{(|[^}]*,)'
else
	if has('python3') || has('python')
		let g:jedi#completions_enabled=1
	endif
endif

" .. racer
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 0

" .. scratch
let g:scratch_autohide=1
let g:scratch_insert_autohide=0
let g:scratch_height=10
let g:scratch_top=1
let g:scratch_horizontal=1
let g:scratch_no_mappings=1

nmap  <leader>s		<plug>(scratch-insert-reuse)
xmap  <leader>s		<plug>(scratch-selection-reuse)

" .. vimwiki
let g:vimwiki_list = [{'path': '~/documents/vimwiki/'}]
