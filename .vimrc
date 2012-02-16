" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
filetype off
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set hidden
set background=dark

set nowrap        " don't wrap lines

set tabstop=4     " a tab is four spaces
set shiftwidth=4
set expandtab

set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

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

" Display completion menu
set wildmenu
" ignore these files in wildmenu
set wildignore=*/.git/*,*/.hg/*,*/.svn/*,*.so,*.pyc,*.swp,*.bak,*.class

" Clear current search term highlight
nmap <silent> ,/ :nohlsearch<CR>

" gz in command mode closes the current buffer
map gz :bdelete<cr>

" g[bB] in command mode switch to the next/prev. buffer
map gb :bnext<cr>
map gB :bprev<cr>

" lvim to search for current word under cursor, restricted to
" files of the same type
cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ *<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>

augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

set t_Co=512
syntax on
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme zenburn
let g:zenburn_force_dark_Background=1
set guifont=Inconsolata:h18

"let NERDTreeIgnore+=['\.pyc$']
let g:NERDTreeDirArrows=0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_auto_loc_list=1

let g:LustyJugglerSuppressRubyWarning = 1

let python_highlight_all = 1

let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1

noremap gt   :MBEbn<cr>
noremap gT   :MBEbp<cr>

" F10 Toggles pastemode
set pastetoggle="<F10>"

" sudo powers
cmap w!! %!sudo tee > /dev/null %

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Switch to alternate file
map <C-N> :bn<cr>
map <C-M> :bp<cr>

" Nearest source control ancestor
let g:ctrlp_working_path_mode = 2
