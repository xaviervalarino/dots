filetype plugin indent on
syntax on
set encoding=utf-8
set number

set nobackup noswapfile
set nocompatible ignorecase smartcase

set showmode showcmd ttyfast
" clipboard
" =========
set clipboard=unnamed

" Tab settings
" ============
" set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Invisible characters
set listchars=tab:→\ ,space:·,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Auto-save/auto-read
set autoread
set autowriteall

" Set Git commit msg width to 72 chars & enable formatoptions in Insert Mode
" TODO: does this need augroup?
autocmd FileType gitcommit setl textwidth=72 fo-=l

" Mouse
" =====
set ttyfast " Send more characters for redraws
set mouse=a " Enable mouse use in all modes

" History & Search
" ================
set history=5000        "Default history is 20
set hlsearch incsearch  "Highlight search results

" Persistent Undo
"================

set undofile                " Save undo's after file closes
set undodir=~/.vim/undo     " Directory where Undo history file are saved
                            " NOTE! Vim will not create this dir
set undoreload=10000        " Max number lines to save on a buffer reload
set undolevels=1000         " Max number of set changes that can be undone
" Windows
" =======
set splitright splitbelow


" Copy
" ====
vmap <C-c> "+y


" Linebreak
" =========
set linebreak

" Move around visible soft-wrapped lines
noremap j gj
noremap k gk


" Spell-check Markdown files and Git Commit Messages
autocmd FileType markdown  setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType text      setlocal spell


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" fzf
" ===
set rtp+=/usr/local/opt/fzf

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
