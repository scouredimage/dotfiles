" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
filetype off
call pathogen#infect()
call pathogen#helptags()
call pathogen#incubate()
filetype plugin indent on

set t_Co=256

set nocompatible

set hidden
set background=dark

set encoding=utf-8
set scrolloff=3

set wrap
set textwidth=79
set formatoptions=qrn1

set tabstop=4     " a tab is four spaces
set shiftwidth=4
set expandtab

set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" clear out a search
nnoremap <leader><space> :noh<cr>

set relativenumber
set showmode
set showcmd

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set nobackup
set noswapfile

set cursorline
set ttyfast
set ruler

" Reload .vimrc
map <leader>rv :source ~/.vimrc<CR>

" Copy and paste from X clipboard -
com -range Cz :silent :<line1>,<line2>w !pbcopy
ca cz Cz

" Display completion menu
set wildmenu
" ignore these files in wildmenu
set wildignore=*/.git/*,*/.hg/*,*/.svn/*,*.so,*.pyc,*.swp,*.bak,*.class

" Clear current search term highlight
nmap <silent> ,/ :nohlsearch<CR>

" Make Y consistent with D and C
map Y y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Indent visual mode selection with tab
vmap <tab> >gv
vmap <s-tab> <gv

" Split screen
map <leader>v   :vsp<CR>

" gz in command mode closes the current buffer
map gz :bdelete<cr>

" g[bB] in command mode switch to the next/prev. buffer
map gb :bnext<cr>
map gB :bprev<cr>

" lvim to search for current word under cursor, restricted to
" files of the same type
cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ **/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>

set t_Co=512
syntax on
set background=dark
colorscheme zenburn
let g:zenburn_force_dark_Background=1
"set guifont=Inconsolata:h18

"let g:NERDTreeIgnore+=['\.pyc$']
let g:NERDTreeDirArrows=0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_auto_loc_list=1

let python_highlight_all=1

noremap gt   :MBEbn<cr>
noremap gT   :MBEbp<cr>

" F2 toggles pastemode
set pastetoggle=<F2>

" sudo powers
cmap w!! %!sudo tee > /dev/null %

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Nearest source control ancestor
let g:ctrlp_working_path_mode=2

let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepHidden=0
let g:EasyGrepMode=2        " 0=all files / 1=open buffers / 2=track extension
let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepEveryMatch=0
let g:EasyGrepJumpToMatch=0
let g:EasyGrepSearchCurrentBufferDir=0

autocmd BufNewFile,BufRead *.conf set ft=javascript

