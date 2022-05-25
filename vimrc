" FuzzyFinder
nnoremap <C-f> :<C-u>FZF<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" NerdCommenter
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

let mapleader=","

" TO allow copy paste from other sources
set clipboard=unnamedplus "Linux
" set clipboard=unnamed "OSX

" Set encoding to utf-8
set encoding=utf-8

" LineIndent Guide
set listchars=tab:\×\ 
set list

" set shiftwidth=2 " not sure about this what it does: please comment if wanted to have similar indentation with vscode and adjust tabstop instead.
" set smarttab " not sure about this: please comment
" Set indentation size
set tabstop=2
" convert tab characters to space character during indentation
" set expandtab

" Theme
" available themes installed [plastic, candid, deus]
set number relativenumber
if has('termguicolors')
	set termguicolors
endif
set background=dark
syntax on
colorscheme plastic

" For Ayu theme
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" Highlight active row
" hi <comment, constant, normal, nontext, special, cursor,
" cursorline, errormsg, folded>
" cterm=<bold, underline>
" term=<none>
" autocmd <WinEnter, WinLeave, search about autocmd for more>
" guibg => background ctermbg=background ctermfg=foreground
set cursorline
hi cursorline cterm=underline term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal cursorline
highlight CursorLine guibg=none ctermbg=234

" Tabnine
set rtp+=~/.config/nvim/pack/bundle/starts/tabnine-vim

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if has("patch-8.1.1564")
	set signcolumn=number
else
	set signcolumn=no
endif

" Vim-go
let g:go_fmt_command="goimports"
let g:go_fmt_autosave=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_operators=2
let g:go_highlight_build_constraints=1
