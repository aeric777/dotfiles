source /etc/vim/vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " VI compatible mode is disabled so that VIm things work


" =============================================================================
"   PLUGINS
" =============================================================================
"To be perfected
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>



" =============================================================================
"  EDITOR SETTINGS
" =============================================================================
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on			" enable syntax processing



" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set shiftwidth=4		" Insert 4 spaces on a tab
set expandtab		" tabs are spaces, mainly because of python



" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number		" show line numbers
set relativenumber		" show relative numbering
set showcmd		" show command in bottom bar
set cursorline		" highlight current line
filetype indent on		" load filetype-specific indent files
set autoindent
filetype plugin on		" load filetype specific plugin files
set wildmenu		" visual autocomplete for command menu
set showmatch		" highlight matching [{()}]
set laststatus=2		" Show the status line at the bottom
"set mouse+=a		" A necessary evil, mouse support
set noerrorbells visualbell t_vb=	"Disable annoying error noises
set splitbelow		" Open new vertical split bottom
set splitright		" Open new horizontal splits right
set linebreak		" Have lines wrap instead of continue off-screen
set scrolloff=12		" Keep cursor in approximately the middle of the screen
set updatetime=100	" Some plugins require fast updatetime
set ttyfast 		" Improve redrawing



"Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden		"Allows having hidden buffers(not displayed in any window)



" Sensible stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start	" Make backspace behave in a more intuitive way
nmap Q <Nop>			" 'Q' in normal mode enters Ex mode. You almost never want this.

map <C-a> <Nop>		" Unbind for tmux
map <C-x> <Nop>



"Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
set ignorecase	" Ignore case in searches by default
set smartcase	" But make it case sensitive if an uppercase is entered
" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>
" Ignore files for completion
set wildignore+=*/.git/*,*/tmp/*,*.swp



" Undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir



"autocompile with c & c++ & Java & Python language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc



"auto type mached (){}[]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"imap { {}<ESC>i<CR><ESC>V<O
"imap ( ()<ESC>i
"imap [ []<ESC>i
inoremap <C-[> <ESC>



" Disable the default Vim startup message.
set shortmess+=I



" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>



" =============================================================================
"   CUSTOM SHORTCUTS  (LEADER, FN, &c)
" =============================================================================
"To be perfected

