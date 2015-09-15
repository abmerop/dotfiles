" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2000 Mar 29
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

let mapleader = ","

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype indent on

set t_Co=256
set nowrap         " Don't wrap long lines
set autoindent     " Do auto-indenting
set smartindent
set nocindent      " But don't do wacky C style indenting
"set bs=2		   " allow backspacing over everything in insert mode
set showmatch      " always set showmatch on
set expandtab      " Use spaces instead of tabs
set softtabstop=4  " Use spaces instead of tabs
set shiftwidth=4
set tabstop=4      " If you insist on using tabs, use the same tabstop
"set backup		   " keep a backup file (defaults to .filename~)
set viminfo='20,\"50  " read/write a .viminfo file, don't store more than 50 lines of registers
set history=50     " keep 50 lines of command line history
set undolevels=500
set ruler          " show the cursor position all the time
set autowrite

" These are supposed to redraw the terminal on vim exit.
" For csh you might want to try `setenv PAGER 'less'` so the vim drawing is removed as well
set t_ti=[?1049h
set t_te=[?1049l

" Allow human millisecond failure of shift key lift-off
command! W w
command! Q q

" Unix style completion
set wildmode=longest,list,full
set wildmenu

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  noremap <silent> <Space> :silent noh<CR>
endif

" Search as you type
set incsearch

if has("autocmd")
    autocmd BufNewFile,BufRead Makefile set noexpandtab " Makefiles ensure that we don't expand tabs since tabs are special
endif

" Highlight lines not matching style
if &t_Co > 2 || has("gui_running")
    hi BadTabs ctermbg=darkred guibg=darkred
    hi MatchParen ctermbg=blue guibg=lightblue
    hi Search ctermbg=lightblue ctermfg=white
endif

" Always show status bar
set statusline=%F%m%r%h%w\ %=[Type=%Y]\ [POS=%l,%v][%p%%]\ [LEN=%L]
set laststatus=2
set encoding=utf-8

" Disable bells
set noerrorbells
set novisualbell

" Disable commands that I probably don't want to do ever
map <C-W>o :echo "Disabled."<CR>
map <C-W><C-O> :echo "Disabled."<CR>


" lhs comments -- select a range then hit ,# to insert hash comments
" or ,/ for // comments, or ,c to clear comments.
map ,# :s/^/#/<CR> <Esc>:nohlsearch <CR>
map ,/ :s/^/\/\//<CR> <Esc>:nohlsearch <CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR> <Esc>:nohlsearch<CR>

" wrapping comments -- select a range then hit ,* to put  /* */ around
" selection, or ,d to clear them
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR> <Esc>:nohlsearch<CR>
map ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR> <Esc>:nohlsearch<CR>

" to clear hlsearch -- hit ,h to clear highlighting from last search
map ,h :nohlsearch <CR>

" disable Ex mode
nnoremap Q <nop>

nnoremap n nzz
nnoremap N Nzz

" nice look
colorscheme wombat256

" Fill non-text space with theme background rather than system default
set t_ut=

" Line numbers; always show 6 spaces for 1000-99999 line files
set nu
set nuw=6
"au BufEnter * :set rnu
"au BufLeave * :set nu
"au WinEnter * :set rnu
"au WinLeave * :set nu
"au InsertEnter * :set nu
"au InsertLeave * :set rnu
"au FocusLost * :set nu
"au FocusGained * :set rnu

" reduce rage-inducing unindenting of python and R comments
:inoremap # X<BS>#

" highlight SLICC code and OpenCL as C
au BufNewFile,BufRead *.sm set filetype=c
au BufNewFile,BufRead *.slicc set filetype=c
au BufNewFile,BufRead *.cl set filetype=c

