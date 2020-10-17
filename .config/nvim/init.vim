" Init
" {{{
  set nocompatible              " be iMproved, required
  filetype off                  " required
  set encoding=utf-8

  " set rtp+=~/.vim/bundle/Vundle.vim
  " call vundle#begin()
  call plug#begin('~/.vim/plugged')

  Plug 'gmarik/Vundle.vim'

  Plug 'mileszs/ack.vim'
  Plug 'othree/html5.vim'
  " Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'fatih/vim-go'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-ruby/vim-ruby'
  " Plug 'benmills/vimux'
  " Plug 'christoomey/vim-tmux-navigator'

  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'sirver/ultisnips'
  " Plug 'honza/vim-snippets'

  Plug 'sjl/vitality.vim'
  Plug 'rizzatti/dash.vim'
  Plug 'mxw/vim-jsx'
  " Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown' " follows after tabular
  Plug 'Chandlercjy/vim-markdown-edit-code-block'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-dispatch'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  " Plug 'w0rp/ale'
  Plug 'tpope/vim-unimpaired'
  Plug 'romainl/flattened'
  Plug 'junegunn/vim-easy-align'
  Plug 'ayu-theme/ayu-vim'
  Plug 'stulzer/heroku-colorscheme'
  Plug 'pbrisbin/vim-mkdir'

  Plug 'kchmck/vim-coffee-script'
  Plug 'powerman/vim-Plug-ruscmd'
  Plug 'xolox/vim-misc'
  Plug 'rlue/vim-fold-rspec'
  Plug 'elzr/vim-json'
  Plug 'posva/vim-vue'
  Plug 'vim-scripts/BufOnly.vim'
  Plug 'wannesm/wmgraphviz.vim'

  Plug 'Konfekt/FastFold'
  Plug 'aklt/plantuml-syntax'
  Plug 'chrisbra/csv.vim'
  Plug 'lervag/vimtex'

  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-projectionist'
  Plug 'majutsushi/tagbar'

  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " let g:deoplete#enable_at_startup = 1
  " Slow!
  " Plug 'slashmili/alchemist.vim'
  " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'

  Plug 'elixir-editors/vim-elixir'

  Plug 'jiangmiao/auto-pairs'

  " Plug 'kana/vim-textobj-user'
  " Plug 'andyl/vim-textobj-elixir'
  " Plug 'jasonlong/vim-textobj-css'
  " Plug 'coachshea/vim-textobj-markdown'
  " Plug 'tek/vim-textobj-ruby'
  " Plug 'whatyouhide/vim-textobj-erb'
  " Plug 'sgur/vim-textobj-parameter'

  Plug 'ekalinin/Dockerfile.vim'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-jdaddy'
  Plug 'vim-scripts/dbext.vim'
  Plug 'neo4j-contrib/cypher-vim-syntax'
  Plug 'scrooloose/vim-slumlord'

  " Plug 'sheerun/vim-polyglot'

  Plug '~/projects/itsNikolay/my-vim/'
  Plug '~/projects/itsNikolay/vim-terminal-dispatch/'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'mhinz/vim-startify'

  " All of your Plugins must be added before the following line
  " call vundle#end()            " required
  call plug#end()
  " filetype Plug indent on    " required
" }}}

" Settings
" {{{
"   Basic {{{
      set backspace=indent,eol,start " make backspace a more flexible
      let loaded_matchparen=1 " match paranthesis
      "set backup " create backup
      "set backupdir=~/.vim/tmp/backup " where to put backup files
      " set directory=~/.vim/tmp/swap " directory to place swap files in
      "set undodir=~/.vim/tmp/undo " directory to place undo files in
      "set undofile " create undo file
      set noswapfile
      set mouse=a " use mouse for everything
      set equalalways " split windows equally
      set splitright splitbelow " new splits right from current and other below
      set autoread " supress warnings
      set wildmenu " wildmenu when autocomplting option
      set wildmode=full " complete the full match, this is default behaviour
      set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc " there files will be ignored when completing in wild menu
      " set clipboard=unnamed " copy to the system clipboard
      set clipboard+=unnamedplus
      set history=1000
      set tags=.tags,tags " save tags generated for files in current working directory
      set ttyfast " i got a fast terminal!
      set ttimeoutlen=50  " Make Esc work faster
      set path=**
      set exrc " enable per project configuration files

      set shm+=s           " Suppress 'search hit BOTTOM, continuing at TOP' message
      set noerrorbells     " Shut up!
      set novisualbell     " Don't flicker!
      set t_vb=            " Holy ..., be quite!

    " }}}

    " Folding
      set foldtext=MyFoldFunction()
      set fillchars=fold:\ 

      function! MyFoldFunction()
        let line = getline(v:foldstart)
        let lastline = getline(v:foldend)
        let numfolded = v:foldend - v:foldstart + 1
        return line . '  [' . numfolded . ']'
      endfunction

    " UI {{{
    "
      syntax enable
      set background=dark
      set t_Co=256

      set termguicolors     " enable true colors support
      colorscheme my-heroku-terminal

      set tabstop=4 " when there's tab, it should be indented by 4 spaces
      set shiftwidth=2 " Number of spaces to use for each step of (auto)indent
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set autoindent
      set infercase " case inferred by default, used for autocompletition in insert mode and so on..

      set ignorecase " ignore case when searching
      set hlsearch   " highlight search matches
      set incsearch " search as you type
      set gdefault  " global matching is default
      set smartcase " use smartcase, when search query starts with Uppercase, turn off case insensitive search

      set list " show trailing characters
      " it show ¬ character when as you type, fill free to comment out set list
      " tab:▸\ ,
      set listchars=tab:·\ ,trail:¬,extends:❯,precedes:❮

      set relativenumber " set line numbering
      set number " set line numbering
      set novisualbell " do not blink
      set lazyredraw " get faster, redraw only when it's needed
      set nostartofline
      set linespace=1
      let c_no_trail_space_error = 1 " see c errors
      let java_space_errors = 1 " see java errors
      set showcmd " show the command being typed
      set ruler " always show current position
      set scrolloff=6 " Keep 6 lines (top/bottom) for scop
      set sidescrolloff=10 " Keep 10 lines at the size
      set showmode " show the current mode (Insert, Visual..)

      set expandtab " no real tabs!
      set wrap " wrap lines, we dont want long lines
      set showbreak=↪ " character show when wrapping line

      set foldenable " folding text into clusters (+) according to  {{{ }}} or comments for example.
      " set foldmethod=manual " default options, we create fold manually.
      set showmatch " when use insert bracket, briefly jump to matching one (i like it, but i might be annoying)

      set infercase " case inferred by default
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set shiftwidth=2 " auto-indent amount when using >> <<
      set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
      set tabstop=4 " real tabs should be 4, and they will show with set list on

      " set completeopt=menu,preview
      " }}}

    " Advanced macros
    " {{{
      " Removes trailing spaces
      function! TrimWhiteSpace()
        if !&binary && &filetype != 'diff'
          normal mz
          normal Hmy
          %s/^\s\+$//e
          normal 'yz<CR>
          normal `z
        endif
      endfunction

      " Filter and trim whitespaces
      " autocmd FileWritePre * :call TrimWhiteSpace()
      " autocmd FileAppendPre * :call TrimWhiteSpace()
      " autocmd FilterWritePre * :call TrimWhiteSpace()
      " autocmd BufWritePre * :call TrimWhiteSpace()

    "}}}

    " Binding
    " {{{
    " Map leader
      let mapleader = "\<Space>"

      " Save like a pro (CTRL+s)
      nnoremap <c-s> :w<cr>
      nnoremap <leader>w :w<cr>

      " Quit like a pro
      nnoremap <C-M-q> :Kwbd<CR>
      nnoremap <leader>q :q<CR>
      nnoremap <leader>x :wq<cr>
      nnoremap <leader>z :bd<cr>

      " this key combination gets rid of the search highlights.
      nmap <leader>, :noh<cr>

      " open vertical split and switch to it
      nnoremap <leader>v <C-w>v<C-w>l

      " open horizontal  split and switch to it
      nnoremap <leader>h :split<CR>

      " buffers - moving around
      " nnoremap <leader>n :bnext<CR>
      " nnoremap <leader>p :bprevious<CR>

      " Write and quit current buffer
      nnoremap <C-M-w> :wq<CR>

      " copy from clipboard with ease (<leader>p => paste what you copied by CTRL+c in clipboard)
      "nnoremap <leader>p "+p
      "nnoremap <leader>y "+y

      " start ack search, (using ACK tool, like grep but for source code)
      nnoremap <leader>a :Ack! 

      " reformat whole file
      nnoremap <leader>= ggVG=''

      " use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
      " (it will prompt for sudo password when writing)
      cmap w!! %!sudo tee > /dev/null %

      " upper/lower word
      nmap <leader>u mQviwU`Q
      nmap <leader>l mQviwu`Q

      " upper/lower first char of word
      nmap <leader>wu mQgewvU`Q
      nmap <leader>wl mQgewvu`Q

      " Create the directory containing the file in the buffer
      "nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

      " Toggle hlsearch with <leader>hs
      " nmap <leader>sh :set hlsearch! hlsearch?<CR>

   " }}}

ino <C-C> <Esc>

"Rocket hash
nmap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<cr>
nmap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<cr>

" Dash search word under cursor in Dash
nmap <silent> <leader>d <Plug>DashSearch

" Improve regexp
set re=1
set regexpengine=1

" Spell check
set spell spelllang=ru,en,de
inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
hi SpellBad gui=undercurl

" Exclude dirs from search
set wildignore+=*/node_modules/*

" Persistent Undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" FZF
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>1 :Filetypes<CR>
" command!      -bang -nargs=* Tags                      call fzf#vim#tags(<q-args>, {'options': '--reverse --nth .. --tiebreak=length'}, <bang>0)
" command! -bar -bang -nargs=? -complete=buffer Buffers  call fzf#vim#buffers(<q-args>, {'options': '--reverse'}, <bang>0)
" command!      -bang -nargs=? -complete=dir Files       call fzf#vim#files(<q-args>, {'options': '--reverse'}, <bang>0)
" let g:fzf_layout = { 'window': '20split' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Keyword'],
"   \ 'bg':      ['bg', 'Keyword'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
" " respect .gitignore
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" ALE
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_change_sign_column_color = 1
highlight ALESignColumnWithErrors    ctermfg=NONE ctermbg=NONE guifg=#A5A5A5 guibg=NONE
highlight ALESignColumnWithoutErrors ctermfg=NONE ctermbg=NONE guifg=#A5A5A5 guibg=NONE
highlight ALEErrorSign               ctermfg=NONE ctermbg=NONE guifg=#C30500 guibg=NONE
highlight ALEWarningSign             ctermfg=NONE ctermbg=NONE guifg=#ED6237 guibg=NONE
highlight ALEInfoSign                ctermfg=NONE ctermbg=NONE guifg=#ED6237 guibg=NONE
highlight ALEError                   ctermfg=NONE ctermbg=NONE guifg=#C30500 guibg=NONE
highlight ALEWarning                 ctermfg=NONE ctermbg=NONE guifg=#ED6237 guibg=NONE
highlight ALEInfo                    ctermfg=NONE ctermbg=NONE guifg=#ED6237 guibg=NONE
" disable c type hightlight
highlight cType NONE

highlight CursorLine guibg=Grey11

" Pandoc
let g:pandoc#filetypes#pandoc_markdown = 0

" Ack=grep
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
else
  let g:ackprg = "ack -H --nocolor --nogroup --column"
endif

" EasyAlign
nnoremap <leader>c :EasyAlign<CR>
vnoremap <leader>c :EasyAlign<CR>

" Dispatch
nmap <leader><Up> :Copen!<CR>
nmap <leader><Down> :Copen<CR>

" Language support
set keymap=russian-jcukenmac " mac!
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set imi=0
lang en_US.UTF-8

" Konfekt/FastFold
" folds are only updated manually but not when saving the buffer
let g:fastfold_savehook = 0

" Formatting
set tw=80

" SnipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
let g:snipMate.scope_aliases['vimwiki'] = 'markdown,vimwiki'

" Fugitive
" exclude fugitive files from buffer
if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit 
nnoremap <leader>gd :Gdiff<cr>
set statusline=%#String#%{FugitiveStatusline()}%#CursorColumn#\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %L
set laststatus=2

" deoplete
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#source('ale', 'rank', 999)
"

"NetRW
let g:netrw_localrmdir="rm"
let g:netrw_localrmdiropt=" -rf"
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_liststyle = 3
autocmd FileType netrw setl bufhidden=delete
" numbering
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"
" http://www.drchip.org/astronaut/vim/index.html#NETRW
" let g:netrw_fastbrowse    = 0 " 2
" let g:netrw_keepdir       = 1
" let g:netrw_liststyle     = 3
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1


"Chandlercjy/vim-markdown-edit-code-block
nmap <buffer> <silent> <leader>e :MarkdownEditBlock<CR>

" plasticboy/vim-markdown
let g:vim_markdown_follow_anchor = 1

"tpope/vim-projectionist
nmap <leader>s :A<CR>
if !exists('g:projectionist_transformations')
  let g:projectionist_transformations = {}
endif
function! g:projectionist_transformations.undtoslash(input, o) abort
  return substitute(a:input, '_', '/', 'g')
endfunction

"Tagbar
hi link TagbarSignature NonText

" Terminal
cab tt tabe \| te
cab tte tabe \| te
cab tabete tabe \| te
cab vt vs \| te
cab vte vs \| te
cab vste vs \| te

" sub
set inccommand=nosplit

" Ultisnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<C-J>"
" let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Mappings
" break line
inoremap <c-l> <c-o>$<c-j>
inoremap <c-p> <c-r>*

" Menu
" hi clear Pmenu
hi Pmenu guibg=Grey3

" auto write
set autowriteall

" Sessions
nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>:so 

" mks
set sessionoptions-=buffers

"matit
runtime macros/matit.vim

" neosnippet
" let g:neosnippet#snippets_directory="~/projects/itsNikolay/my-vim/neosnippets"
" let g:neosnippet#enable_snipmate_compatibility = 1
" let g:neosnippet#disable_runtime_snippets = 0
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"abbrs
cabbr RU Dispatch trans :ru -b
cabbr EN Dispatch trans :en -b
cabbr goo !open https://google.com/search\?q\=

"LSP
" packadd nvim-lspconfig
"
let g:tex_flavor = "latex"

source ~/.config/nvim/coc_setup.vim
" Fuzzy finder exist
nmap <C-c> <esc>

" AsyncRun
let g:asyncrun_open = 6
nmap `a :AsyncRun 
nmap `A :AsyncRun! 
nmap `t :AsyncTasw! 
nmap `t :AsyncTask! 

let g:airline_theme='ayu'

source ~/.config/nvim/startify.vim

"" to the end of the file
set secure
