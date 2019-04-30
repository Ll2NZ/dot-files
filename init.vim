" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin()

  " base plugins
  Plug 'tomasiser/vim-code-dark'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'yggdroot/indentline'

  " useful tools
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'heavenshell/vim-jsdoc'

  " ide-like features
  Plug 'vim-airline/vim-airline'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
  Plug 'w0rp/ale'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'               " GitHub integration

call plug#end()

" ------------------------------------------------------------------------------
" basic configuration
" ------------------------------------------------------------------------------

" Enale Ale linter for the following languages
let g:ale_linters = {
\   'javascript': ['tslint', 'eslint']
\}

" Ale error & warning configurations
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

" netrw defaults
let g:netrw_liststyle = 3
let g:netrw_winsize = 85
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_altv = 1

" gutter width
" gutter background color
" gutter number color
" reset cursor within vim to match terminal cursor
set numberwidth=5
set cursorline
highlight cursorlinenr ctermbg=239 ctermfg=198
set guicursor=

" search to no wrap
" history
set nowrapscan
set history=25

" hide status VIM status bar
"set statusline=
set noshowmode

" enter the current millenium. by default vim will try to be like vi
set nocompatible

" set number lines, syntax, and filetype
set number
syntax enable
colorscheme codedark
filetype plugin indent on

" no wrapping of long lines of code
" show path relative to current working directory
" enable mouse functionality
" control <BS> behavior
set nowrap
set autochdir
set mouse=a
set backspace=indent,eol,start

" insert spaces when tab key is presses
" change number of space characters inserted for indentation
" effect when pressing <Tab> or <BS>
" control number of spaces to enter when tab is pressed
set expandtab
set shiftwidth=2
set softtabstop=2 " default value same as tabstop
set tabstop=2

" move lines of code up or down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" escape key binding
inoremap jj <esc>

" create the `tags` file
command! MakeTags !ctags -R .

" Tilde color
highlight EndOfBuffer ctermfg=15

" set comment color to nice green
hi Comment ctermfg=71

" simple react snippets
nnoremap rsf :-1read ~/code-snippets/react.state.function.js<CR>3jfA
nnoremap rf :-1read ~/code-snippets/react.function.js<CR>2jfA

" indentation guide types and color
let g:indentLine_color_term=244
let g:indentline_char = '¦'

" restrict React JSX syntax to .js files
" create emmet key binding for autocomplete HTML tags
let g:jsx_ext_required = 0
let g:user_emmet_leader_key='<TAB>'
let user_emmet_settings = {
    \'javascript.jsx' : {
        \'extends' : 'jsx',
    \},
\}

" JS Docs interactive prompt
" enable syntax highligthing of JSDoc comments
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:javascript_plugin_jsdoc = 1
