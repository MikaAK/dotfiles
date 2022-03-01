set termguicolors

call plug#begin("~/.config/nvim/plugins")

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/echodoc.vim'

" Movement
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'


" Files
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'qpkorr/vim-renamer'
Plug 'jremmen/vim-ripgrep'

" Syntax
" Plug 'shmargum/vim-sass-colors'
" Plug 'vim-syntastic/syntastic'
" Plug 'ternjs/tern_for_vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'
Plug 'cespare/vim-toml'

Plug 'JuliaEditorSupport/julia-vim'

" Status Lines
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'

" Colors
Plug 'tomasr/molokai'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'gavocanov/vim-js-indent'
Plug 'othree/yajs'
Plug 'othree/es.next.syntax.vim'
" Plug 'Quramy/tsuquyomi'

" HTML Languages
Plug 'digitaltoad/vim-pug'

" Fish
Plug 'dag/vim-fish'

" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'mmorearty/elixir-ctags'

" Tracking
Plug 'wakatime/vim-wakatime'

" Utility
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'tpope/tpope-vim-abolish'
Plug 'wellle/targets.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mbbill/undotree'
Plug 'Chiel92/vim-autoformat'
" Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'tpope/vim-fugitive'

" Testing
Plug 'janko-m/vim-test'

Plug 'rhysd/vim-clang-format'
" Snippets
Plug 'SirVer/ultisnips'

Plug 'mattn/emmet-vim'

call plug#end()


" Map Leader to ,
let mapleader = ","
let g:mapleader = ","
map <Leader>w <esc>:StripWhitespace<CR>:w<CR>

let test#neovim#term_position = "belowright"
noremap <Leader><Leader>tf :TestFile<CR>
noremap <Leader><Leader>tn :TestNearest<CR>

let g:user_emmet_leader_key=","

" Completion
let g:coc_node_path = "/Users/mika/n/bin/node"

" Map completion select to tab
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set Python3 path
let g:python3_host_prog = '/usr/local/bin/python3'

" Map Ctrl-O to open tree view
map <C-o> :NERDTreeToggle<CR>
nnoremap U ::UndotreeToggle<CR>

map <F10> :echo "<" . synIDattr(synID(line("."),col("."),1),"name") . '> '
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Map ,-s to toggle workspace tracking
" nnoremap <leader>s :ToggleWorkspace<CR>

" Map Ctrl-j/k/l/h to move window panes
noremap <C-j> <C-W>j
noremap <C-l> <C-W>l
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h

" If using deoplete enable, allows tab completion and disables for TS
" call deoplete#enable()

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#enable_smart_case = 1

" let g:deoplete#deoplete_onmni_patterns = get(g:, 'deoplete#force_omni_input_patterns', {})

" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><s-Tab> pumvisible() ? "\<C-p>" : "\<C-k>"

" au FileType javascript,jsx,javascript.jsx setl omnifunc=tern#Complete
" let g:jsx_ext_required = 1


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Allow Vim To close if only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd BufEnter * EnableStripWhitespaceOnSave

set list
set listchars=trail:·

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_enable_typescript_checker = 1

let g:molokai_original = 0
let g:rehash256 = 1

" let $FZF_DEFAULT_COMMAND= 'ag -g ""'
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
nnoremap <c-p> :FZF<cr>

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
" let g:ctrlp_custom_ignore='node_modules|deps|_build'
let g:alchemist#extended_autocomplete = 1

let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/custom-snippets']
let g:UltiSnipsListSnippets='<c-tab>'
" let g:UltiSnipsExpandTrigger='<shift-c-e>'
" let g:UltiSnipsJumpForwardTrigger='<M-j>'
" let g:UltiSnipsJumpBackwardTrigger='<M-k>'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsEditSplit="vertical"

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent", "--no-port-file"]

filetype plugin indent on    " required

syntax enable
colorscheme molokai
set number
set nocompatible              " be iMproved, required
filetype off                  " required
let g:NERDSpaceDelims = 1
set backupcopy=yes
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn off statusbar, because it is externalized
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" Enable GUI mouse behavior
set mouse=a

set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*/.git/*,*/node_modules/*,*/_build/*,*/deps/*

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set hidden

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
set guifont=Hack

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set undodir=~/.config/nvim/undofiles
set undofile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" A buffer becomes hidden when it is abandoned
" set hid

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Close the current buffer
map <leader>bc :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tj :tabnext<cr>
map <leader>tk :tabprevious<cr>
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
" set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Map CMD+Q to quitall for oni
vmap <M-q> :qall<cr>

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
  vmap <D-q> <M-q>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :Rg

" Vimgreps in the current file
map <leader><space> :Rg  <C-R>%<C-A><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
" map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function! CmdLine(str)
"     exe "menu Foo.Bar :" . a:str
"     emenu Foo.Bar
"     unmenu Foo
" endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine(":Rg " . l:pattern)
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
