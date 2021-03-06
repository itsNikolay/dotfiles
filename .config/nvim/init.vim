" Init
" {{{
  set nocompatible              " be iMproved, required
  filetype off                  " required
  set encoding=utf-8

  call plug#begin('~/.vim/plugged')

  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'rizzatti/dash.vim'
  Plug 'plasticboy/vim-markdown' " follows after tabular
  Plug 'Chandlercjy/vim-markdown-edit-code-block'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-unimpaired'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-snippets'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'mhinz/vim-startify'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-test/vim-test'
  Plug 'AndrewRadev/splitjoin.vim'

  " Plug 'neovim/nvim-lspconfig'
  " Plug 'onsails/lspkind-nvim'
  " Plug 'hrsh7th/nvim-compe'
  " Plug 'mfussenegger/nvim-dap'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-symbols.nvim'
  " Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sainnhe/edge'

  " Plug 'SirVer/ultisnips'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'puremourning/vimspector'
  " Plug 'mfussenegger/nvim-dap'
  Plug 'vim-airline/vim-airline'

  Plug '~/projects/itsNikolay/my-vim/'
  Plug '~/projects/itsNikolay/vim-terminal-dispatch/'

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

      set shm+=sa           " Suppress 'search hit BOTTOM, continuing at TOP' message
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

      " set termguicolors     " enable true colors support
      " colorscheme my-heroku-terminal

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
      set scrolloff=15 " Keep 6 lines (top/bottom) for scop
      set sidescrolloff=10 " Keep 10 lines at the size
      set showmode " show the current mode (Insert, Visual..)

      set expandtab " no real tabs!
      set wrap " wrap lines, we dont want long lines
      set showbreak=↪ " character show when wrapping line

      set foldenable " folding text into clusters (+) according to  {{{ }}} or comments for example.
      " set foldmethod=manual " default options, we create fold manually.
      set foldlevel=5
      set showmatch " when use insert bracket, briefly jump to matching one (i like it, but i might be annoying)

      set infercase " case inferred by default
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set shiftwidth=2 " auto-indent amount when using >> <<
      set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
      set tabstop=4 " real tabs should be 4, and they will show with set list on
      set cmdheight=2
      set updatetime=1

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

" Improve regexp
set re=1
set regexpengine=1
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn

" Spell check
set spell spelllang=ru,en,de
hi SpellBad gui=undercurl

" Exclude dirs from search
set wildignore+=*/node_modules/*

" Persistent Undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" " respect .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
command!      -bang -nargs=* Tags                      call fzf#vim#tags(<q-args>, {'options': '--nth ..'}, <bang>0)
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

" git-gutter
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

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

" plasticboy/vim-markdown
let g:vim_markdown_follow_anchor = 1

"tpope/vim-projectionist
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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Menu
" hi clear Pmenu
hi Pmenu guibg=Grey3

" auto write
set autowriteall

" mks
set sessionoptions-=buffers

"matit
runtime macros/matit.vim

"abbrs
cabbr RU Dispatch trans :ru -b
cabbr EN Dispatch trans :en -b
cabbr goo !open https://google.com/search\?q\=

"LSP
" packadd nvim-lspconfig
"
let g:tex_flavor = "latex"

source ~/.config/nvim/coc_setup.vim

" AsyncRun
let g:asyncrun_open = 6

" let g:airline_theme='ayu'

source ~/.config/nvim/startify.vim

" fugitive
hi DiffAdd gui=NONE guifg=green guibg=black
hi DiffChange gui=NONE guifg=red guibg=black
hi DiffText gui=NONE guifg=orange guibg=black
hi DiffDelete gui=NONE guifg=red guibg=black

" ETC? (Pragmatic Programmer Book p. 60)
autocmd BufWritePost * echo "ETC?"

" vim-test
let test#strategy = 'neovim'
let test#neovim#term_position = 'vertical'

" mappings
source ~/.config/nvim/mappings.vim

" lua require('mylsp')
" lua require('comp')
" lua require('mydap')
lua require('mytree')
" lua require('galaxyline3')
" lua require('mytelescope')

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" edge
colorscheme edge

sign define LspDiagnosticsSignError text=✗ texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=⚠ texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text=ⓘ texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text=i texthl=LspDiagnosticsSignHint linehl= numhl=

"" to the end of the file
set secure
