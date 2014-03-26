"fix mapleader
let mapleader = ","

"turn off vi compatability
set nocp
filetype plugin on

"backspace needs to backspace
set backspace=indent,eol,start

"indent
set autoindent
set smartindent

"set up tabs
set tabstop=4
set shiftwidth=4
set expandtab

" I always screw this up
command! W w
command! Q q

"DOS style completion is stupid, this makes it like bash
set wildmode=longest,list,full
set wildmenu

"highlight/search options
    "highlight searches
    set hlsearch
    "tap space to clear search highight
    noremap <silent> <Space> :silent noh<CR>
    "search as I type
    set incsearch
    "syntax highlighting
    syn on
    "colorscheme of the day
    "colorscheme wombat
    "show extra whitespace
    "hi WhitespaceEOL ctermbg=lightgray guibg=lightgray
    "au BufEnter * let w:m1=matchadd('WhitespaceEOL', '\s\+$', 10)
    "remove extra whitespace
    map <silent> <Leader>s :%s/\s\+$//<CR>
    "show tabs
    hi BadTabs ctermbg=darkred guibg=darkred
    "au BufEnter * let w:m2=matchadd('BadTabs', '\t', 10)
    "set color of matching brace/bracket/parenthesis
    hi MatchParen ctermbg=blue guibg=lightblue

"other ui options
    "set up status line
    set statusline=%F%m%r%h%w\ %=[Type=%Y]\ [POS=%l,%v][%p%%]\ [LEN=%L]
    "always show status line
    set laststatus=2
    set encoding=utf-8
    set t_Co=256
    "show line numbers
    "set number
    set autowrite
    "i like to undo
    set undolevels=500
    "show filename in tabs
    set guitablabel=%t
    "bells are for the weak
    set noerrorbells
    set novisualbell
    "wrapping is annoying
    "set nowrap

if has('gui_running')
    "toolbar is a waste
    set guioptions-=T
endif

",v to open up .vimrc in top window, ,V to resource it
map <Leader>v :sp ~/.vimrc<CR><C-W>
map <silent> <Leader>V :source ~/.vimrc<CR><C-W><CR>:exe ":echo 'gvimrc reloaded'"<CR>
"map <Leader>nt :NERDTree<CR>
"map <Leader>a :AV<CR>
"
"because I hit this shit every fucking time and it's annoying
map <C-W>o :echo "Disabled in vimrc!"<CR>
map <C-W><C-O> :echo "Disabled in vimrc!"<CR>
   
"hi Search ctermbg=darkgrey ctermfg=white
hi Search ctermbg=yellow ctermfg=white

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"let g:Powerline_symbols = 'fancy'
