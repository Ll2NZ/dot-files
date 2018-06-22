" ----------------------------------------------------- "
"   Author: Pablo Lorenzo                               "
"   File:   init.vim                                    "
"  ---------------------------------------------------- "

" -------------------------
" Plugin list
" -------------------------
call plug#begin()

    " Syntax color & IDE behavior
    " -------------------------------------------------------------------------------------
    Plug 'danilo-augusto/vim-afterglow'     " Sublime scheme color
    Plug 'vim-scripts/AutoComplPop'         " Automatically show popup
    Plug '907th/vim-auto-save'              " Autosave file
    Plug 'yggdroot/indentline'              " Indentation guides
    Plug 'vim-airline/vim-airline'          " Status line
    Plug 'terryma/vim-multiple-cursors'     " Sublime multi cursor
    "Plug 'sirver/UltiSnips'                 " Tab for completion

    "  C++ syntax support
    "  --------------------------------------------------------------------------------------
    Plug 'octol/vim-cpp-enhanced-highlight'

    " R syntax support
    " ---------------------------------------------------------------------------------------
    Plug 'jalvesaq/nvim-r'                  " RStudio-like behavior
    "Plug 'gaalcaras/ncm-R'                  " Go as you type completion

    " React JSX functionality
    " ---------------------------------------------------------------------------------------
    Plug 'mxw/vim-jsx'                      " React syntax support
    Plug 'mattn/emmet-vim'                  " HTML syntax support

    " JavaScript & Sass syntax
    " ---------------------------------------------------------------------------------------
    Plug 'pangloss/vim-javascript'          " Syntax support for JS
    Plug 'cakebaker/scss-syntax.vim'        " Syntax support for Sass
    Plug 'hail2u/vim-css3-syntax'           " Syntax support for CSS
    Plug 'lepture/vim-css'                  " Snippets for CSS

    " Linter
    " ---------------------------------------------------------------------------------------
    Plug 'w0rp/ale'                         " Linter for multiple languages

    "  Auto Pairs
    " ---------------------------------------------------------------------------------------
    Plug 'jiangmiao/auto-pairs'

    " GitHub
    " ---------------------------------------------------------------------------------------
    Plug 'tpope/vim-fugitive'

call plug#end()

" ---------------------------
" Netrw defaults
" --------------------------
let g:netrw_liststyle = 3
let g:netrw_winsize = 85
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_altv = 1

" --------------------------------------------------------------------
" Filetype detection, filetype specific plugins,
" & load filetype specific indentations
" --------------------------------------------------------------------
filetype plugin indent on

" -----------------------------
"  Search to no wrap & History
"  ----------------------------
set nowrapscan
set history=25

" ---------------------------------------------
" Set color scheme, syntax, and number lines
" ---------------------------------------------
colorscheme afterglow
syntax enable
set number

" -----------------------------------------------------------------
" Gutter width, gutter background color, gutter number color, and
" reset cursor within vim to match terminal cursor
" ----------------------------------------------------------------
set numberwidth=5
set cursorline
highlight cursorlinenr ctermbg=239 ctermfg=198
set guicursor=

" -------------------------------------------------------------------------------
" Insert spaces when tab key is pressed, change number of space characters
" inserted for indentation, affect when pressing <Tab> or <BS>, and control
" number of spaces to enter when tab is pressed
" -------------------------------------------------------------------------------
set expandtab
set shiftwidth=4
set softtabstop=4 " its default value is the same as tabstop
set tabstop=4

" ------------------------------------------------
" Control <BS> behavior and enable mouse support
" ------------------------------------------------
set backspace=indent,eol,start
set mouse=a

" ------------------------------------------------------------------------------
" When pressing {<Enter>, vim will match with closing } and will place us in
" insert mode. Map jj to espace when in insert mode
" ------------------------------------------------------------------------------
inoremap {<CR> {<CR>}<Esc>O
inoremap jj <esc>

" ------------------------------------------------------
" menuone uses popup menu when there is only one match
" longest inserts the longest common text of matches
" ------------------------------------------------------
set completeopt=menuone,longest

" -----------------------------------------------------------------------
" Pressing enter while popup menu is active will select highlighted text
" -----------------------------------------------------------------------
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u<CR>"

" ------------------------------------------------------
" Change background color to black 236
" Change color of highlighted sections to 238/239
" ------------------------------------------------------
"highlight Normal ctermbg=236
highlight Visual ctermbg=236

" -----------------------------------------------
" Automatically save file and hide notification
" -----------------------------------------------
let g:auto_save = 1
let g:auto_save_silent = 1

" ----------------------------------------
" Indentation guide types and color
" ----------------------------------------
let g:indentLine_color_term=244
let g:indentline_char = '¦'

" -------------------------------------------------------
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

" ------------------------------------------
"  Syntax colors
"  -----------------------------------------

" Conditionale, operators, statements set to pinkish color
hi Operator ctermfg=161
hi Conditional ctermfg=161
hi Statement ctermfg=161
hi Repeat ctermfg=161

" Set comment color to 71, which is green. Set class color keyword
hi Comment ctermfg=71
hi Keyword ctermfg=204

" -------------------------------------------------------
" Enale Ale linter for the following languages
" -------------------------------------------------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" ---------------------------------------
" Ale error & warning configurations
" ---------------------------------------
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

"highlight ALEErrorSign ctermbg=196
"highlight AleError ctermbg=196

"highlight AleWarningSign ctermfg=226
"highlight AleWarning ctermbg=228

" -------------------------------
"  Vim status bar -- INSERT --
"  ------------------------------
" set statusline=
set noshowmode

" ---------------------------------------
" R will adhere to current syntax color
" ---------------------------------------
let g:rout_follow_colorscheme = 1
let R_min_editor_width = 100
let R_show_args = 1

" -----------------------------
"  C++ syntax options
"  ----------------------------
"let g:load_doxygen_syntax=1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" -------------------
"  React snippets
"  ------------------
inoremap rr<CR> import React, { Component } from "react";<Esc>o

" --------------
"  Spell Check
"  -------------
set spelllang=en
