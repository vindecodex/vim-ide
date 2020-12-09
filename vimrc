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
set clipboard=unnamedplus

" Set encoding to utf-8
set encoding=utf-8

" LineIndent Guide
set listchars=tab:\■\ 
set list

set shiftwidth=2
set smarttab
" Set indentation size
set tabstop=2
" convert tab characters to space character during indentation
set expandtab

" Theme
" available themes installed [plastic, candid, deus]
set number relativenumber
set termguicolors
set background=dark
syntax on
colorscheme plastic

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
