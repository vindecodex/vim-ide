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
set listchars=tab:\ɷ\ 
set list

" Theme
" Installed themes [vice, aurora, srcery, ayu]
set number relativenumber
set background=dark
colorscheme ayu
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark" 
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Font {Input}
