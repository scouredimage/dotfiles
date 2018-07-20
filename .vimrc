" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
filetype off
call pathogen#infect()
call pathogen#helptags()
call pathogen#infect('bundle/{}')
filetype plugin indent on

set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" enable true color terminal
set termguicolors

syntax enable
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

set nocompatible
set hidden
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

let mapleader = "\<Space>"      " map spacebar to leader

" clear out a search
nnoremap <leader><space> :noh<cr>
" <Space>o to open a new file
nnoremap <Leader>o :CtrlP<CR>
" <Space>w to save file
nnoremap <Leader>w :w<CR>
" copy & paste to system clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
" enter visual line mode with <Space><Space>
nmap <Leader><Leader> V

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

" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeIgnore+=['\.pyc$']
let g:NERDTreeDirArrows=0
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTree ignores
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']

" Extend default NERDTree window width
let g:NERDTreeWinSize=45

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

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

" jump to end of pased text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" select pasted text
noremap gV `[v`]

" hate that annoying window
map q: :q

" autoreload vim config
augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

" enable mouse
set mouse=a

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#fugitiveline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0
autocmd QuickFixCmdPost *grep* cwindow

" <tab>/<shift+tab> to switch tabs
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

let g:jsonnet_fmt_options="--string-style l --indent 0"
