set shiftwidth=2 tabstop=2 expandtab  " Default indent with 2 spaces
set number relativenumber             " Show hybrid line number
set colorcolumn=80                    " Highlight 80th column
set nocompatible                      " be iMproved, required
set ignorecase                        " Ignore case when searching
set cursorline                        " Highlight cursor line
set incsearch                         " Highlight search result
set hlsearch
set hidden                            " Open other buffers without saving current one
set scrolloff=3

" Amazing Plugins
call plug#begin('~/.vim/plugged')
"" Syntax Highlight
Plug 'joshdick/onedark.vim'
"" Beautiful Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Blamer
Plug 'APZelos/blamer.nvim'
"" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
"" Superpowers
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"" Coc is love
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"" Time Tracking
Plug 'wakatime/vim-wakatime'

" Frontend Frameworks
"" HTML
Plug 'mattn/emmet-vim'
"" REACT
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"" VUE
Plug 'leafOfTree/vim-vue-plugin'
"" SVELTE
Plug 'leafOfTree/vim-svelte-plugin'

"" Matchup plugin
Plug 'andymass/vim-matchup'

call plug#end()

" Enable Syntax Highlight
syntax on
colorscheme onedark
" iTerm2 Transparent Background
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey

" Leader key
let g:mapleader = ' '

" Emmet settings
let g:user_emmet_expandabbr_key='<tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"let g:user_emmet_leader_key = 'ù'  " Redefine Emmet trigger key
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" Airline settings
let g:airline#extensions#tabline#enabled = 1  " Enable tabline

"" Prettier settings
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Enable Vue plugin
let g:vim_vue_plugin_load_full_syntax = 1

" Keymaps
nmap <leader>g <Cmd>vertical Git<bar>%bd<bar>b#<CR>|  " Git
nmap <leader>e <Cmd>CocCommand explorer<CR>|          " Coc Explorer
nmap <C-d> <C-d>zz|                                   " Center cursor on page down
nmap <C-u> <C-u>zz|                                   " Center cursor on page up
nmap n nzz|                                           " Center cursor on next search result 
nmap N Nzz|                                           " Center cursor on previous search result 
nmap <leader>fo <Cmd>Files<CR>|                       " Fuzzy find file
nmap <leader>ff <Cmd>Ag<CR>|                          " Fuzzy find text
nmap <C-k> <Cmd>bd<bar>bp<CR>|                        " Delete buffer
nmap <C-l> <Cmd>bn<CR>|                               " Next buffer
nmap <C-h> <Cmd>bp<CR>|                               " Previous buffer
nmap <CR> <Cmd>b#<CR>|                                " Toggle last buffer with Enter key
nmap <C-j> i<CR><Esc>|                                " New line at cursor
map! <C-c> <Esc>|                                     " Ctrl-c => Escape in Insert and Command-line Modes
map <C-c> <Esc>|                                      " Ctrl-c => Escape in Normal, Visual, Select and Operator-pending Modes
nmap Y y$|                                            " Yank to end of line
nmap <leader>b <Cmd>BlamerToggle<CR>|                 " Blamer Toggle On/Off
nmap L Ljjj|                                          " L jump with scrolloff=3
nmap H Hkkk|                                          " H jump with scrolloff=3

" Indentation for different file types
autocmd BufNewFile,BufRead *.py setlocal shiftwidth=4 tabstop=4 expandtab


