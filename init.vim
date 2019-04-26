" Plugin list
call plug#begin()

    " Main plugins
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
    Plug 'yggdroot/indentline'              " Indentation guides
    Plug 'vim-airline/vim-airline'          " Status line
    Plug 'w0rp/ale'                         " Linter for multiple languages
    Plug 'jiangmiao/auto-pairs'             " Quotes, Parens, & Brackets
    Plug 'tpope/vim-fugitive'               " GitHub integration
    Plug 'tomasiser/vim-code-dark'          " VSCode theme
    Plug 'airblade/vim-gitgutter'           " Git Gutter

    " R syntax support
    Plug 'jalvesaq/nvim-r'                  " RStudio-like behavior
    Plug 'chrisbra/csv.vim'                 " CSV reader

    " React JSX functionality
    Plug 'mxw/vim-jsx'                      " React syntax support
    Plug 'mattn/emmet-vim'                  " HTML syntax support

    " Vue.js functionality
    Plug 'posva/vim-vue'                    " Vue.js syntax support

    " JavaScript Plugins
    Plug 'pangloss/vim-javascript'                         " Syntax support for JS
    Plug 'othree/javascript-libraries-syntax.vim'          " React & D3 syntax
    Plug 'heavenshell/vim-jsdoc'                           " Comments for functions
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " Code formatting
    Plug 'leafgarland/typescript-vim'                      " TypeScript syntax
    Plug 'mustache/vim-mustache-handlebars'                " JS templating language
    Plug 'leafgarland/typescript-vim'

    " Testing plugins
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

" Use JS libraries
" ------------------
let g:used_javascript_libs = "react, d3, underscore, vue, handlebars"

" JS Docs interactive prompt
" -------------------------------
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1

" Enable syntax highligthing of JSDoc comments
" ----------------------------------------------
let g:javascript_plugin_jsdoc = 1

" Netrw defaults
" --------------------------
let g:netrw_liststyle = 3
let g:netrw_winsize = 85
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_altv = 1

" Filetype detection, filetype specific plugins,
" & load filetype specific indentations
" -----------------------------------------------
filetype plugin indent on

"  Search to no wrap & History
"  ----------------------------
set nowrapscan
set history=25

" Set color scheme, syntax, and number lines
" ---------------------------------------------
colorscheme codedark
syntax enable
set number

" Gutter width, gutter background color, gutter number color, and
" reset cursor within vim to match terminal cursor
" ----------------------------------------------------------------
set numberwidth=5
set cursorline
highlight cursorlinenr ctermbg=239 ctermfg=198
set guicursor=

" Insert spaces when tab key is pressed, change number of space characters
" inserted for indentation, affect when pressing <Tab> or <BS>, and control
" number of spaces to enter when tab is pressed
" -------------------------------------------------------------------------------
set expandtab
set shiftwidth=2
set softtabstop=2 " its default value is the same as tabstop
set tabstop=2

" Control <BS> behavior and enable mouse support
" ------------------------------------------------
set backspace=indent,eol,start
set mouse=a

" When pressing {<Enter>, vim will match with closing } and will place us in
" insert mode. Map jj to espace when in insert mode
" ------------------------------------------------------------------------------
inoremap {<CR> {<CR>}<Esc>O
inoremap jj <esc>

" menuone uses popup menu when there is only one match
" longest inserts the longest common text of matches
" ------------------------------------------------------
set completeopt=menuone,longest

" Pressing enter while popup menu is active will select highlighted text
" -----------------------------------------------------------------------
"inoremap <expr> <CR> pumvisible() ? \"\<C-y>" : \"\<C-g>u<CR>"

" Change background color to black 236
" Change color of highlighted sections to 238/239
" ------------------------------------------------------
"highlight Normal ctermbg=236
highlight Visual ctermbg=236

" Automatically save file and hide notification
" -----------------------------------------------
"let g:auto_save = 1
"let g:auto_save_silent = 1

" Indentation guide types and color
" ----------------------------------------
let g:indentLine_color_term=244
let g:indentline_char = '¦'

" Restrict React JSX syntax to .js files
" & create emmet key binding for autocomplete HTML tags
" -------------------------------------------------------
let g:jsx_ext_required = 0
let g:user_emmet_leader_key='<TAB>'
let user_emmet_settings = {
    \'javascript.jsx' : {
        \'extends' : 'jsx',
    \},
\}

"  Syntax colors
"  --------------
" Conditionale, operators, statements set to pinkish color
hi Operator ctermfg=161
hi Conditional ctermfg=161
"hi Statement ctermfg=161
hi Repeat ctermfg=161

" Set comment color to 71, which is green. Set class color keyword
hi Comment ctermfg=71
hi Keyword ctermfg=204

" Tilde color
highlight EndOfBuffer ctermfg=15

" Enale Ale linter for the following languages
" ----------------------------------------------
let g:ale_linters = {
\   'javascript': ['tslint', 'eslint']
\}

" Ale error & warning configurations
" ---------------------------------------
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

"highlight ALEErrorSign ctermbg=196
"highlight AleError ctermbg=196

"highlight AleWarningSign ctermfg=226
"highlight AleWarning ctermbg=228

"  Vim status bar -- INSERT --
"  ------------------------------
" set statusline=
set noshowmode

" R will adhere to current syntax color
" ---------------------------------------
let g:rout_follow_colorscheme = 1
let R_min_editor_width = 100
let R_show_args = 1

"  Spell Check
"  -------------
set spelllang=en

" Show path relative to current dir
" -----------------------------------------
set autochdir

" Move lines of code up or down
" -------------------------------
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Style popup menu
" Pmenu – normal item
" PmenuSel – selected item
" PmenuSbar – scrollbar
" PmenuThumb – thumb of the scrollbar
hi Pmenu ctermbg=238
hi Pmenu ctermfg=15

" Style vertical bar split
"hi VertSplit ctermfg=15

" set to no wrapping of long lines of code
set nowrap
