" Init
" {{{
  set nocompatible              " be iMproved, required
  filetype off                  " required
  set encoding=utf-8

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  Plugin 'mileszs/ack.vim'
  Plugin 'othree/html5.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-fugitive'
  Plugin 'fatih/vim-go'
  Plugin 'pangloss/vim-javascript'
  "Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'benmills/vimux'
  Plugin 'christoomey/vim-tmux-navigator'

  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'sirver/ultisnips'
  Plugin 'honza/vim-snippets'

  Plugin 'sjl/vitality.vim'
  Plugin 'rizzatti/dash.vim'
  Plugin 'mxw/vim-jsx'
  Plugin 'godlygeek/tabular'
  Plugin 'plasticboy/vim-markdown' " follows after tabular
  Plugin 'tpope/vim-rhubarb'
  Plugin 'tpope/vim-dispatch'
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
  Plugin 'w0rp/ale'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'gcmt/taboo.vim'
  "Plugin 'maralla/completor.vim'
  Plugin 'romainl/flattened'
  Plugin 'junegunn/vim-easy-align'
  Plugin 'ayu-theme/ayu-vim'
  Plugin 'stulzer/heroku-colorscheme'
  Plugin 'pbrisbin/vim-mkdir'

  Plugin 'kchmck/vim-coffee-script'
  Plugin 'powerman/vim-plugin-ruscmd'
  Plugin 'xolox/vim-misc'
  Plugin 'xolox/vim-session'
  Plugin 'majutsushi/tagbar'
  Plugin 'rlue/vim-fold-rspec'
  Plugin 'elzr/vim-json'
  Plugin 'posva/vim-vue'
  Plugin 'vim-scripts/BufOnly.vim'
  Plugin 'wannesm/wmgraphviz.vim'
  Plugin 'Konfekt/FastFold'
  Plugin 'aklt/plantuml-syntax'
  "Plugin 'scrooloose/vim-slumlord'
  Plugin 'chrisbra/csv.vim'
  Plugin 'lervag/vimtex'
  "Plugin 'vim-pandoc/vim-pandoc'
  " deoplete.nvim
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'

  Plugin 'file:///Users/nikolayponomarev/projects/itsNikolay/my-vim/'

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
" }}}

" Settings
" {{{
"   Basic {{{
      set backspace=indent,eol,start " make backspace a more flexible
      let loaded_matchparen=1 " match paranthesis
      "set backup " create backup
      "set backupdir=~/.vim/tmp/backup " where to put backup files
      set directory=~/.vim/tmp/swap " directory to place swap files in
      "set undodir=~/.vim/tmp/undo " directory to place undo files in
      "set undofile " create undo file
      set mouse=a " use mouse for everything
      set equalalways " split windows equally
      set splitright splitbelow " new splits right from current and other below
      set autoread " supress warnings
      set wildmenu " wildmenu when autocomplting option
      set wildmode=full " complete the full match, this is default behaviour
      set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " there files will be ignored when completing in wild menu
      set clipboard=unnamed " copy to the system clipboard
      set history=1000
      set tags=.tags,tags,~/vimwiki/tags;/ " save tags generated for files in current working directory
      set ttyfast " i got a fast terminal!
      set ttimeoutlen=50  " Make Esc work faster
      set path=**,~/vimwiki/**
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
      "let ayucolor="light"  " for light version of theme
      "let ayucolor="mirage" " for mirage version of theme
      "let ayucolor="dark"   " for dark version of theme
      "colorscheme ayu
      colorscheme my-heroku-terminal


      set tabstop=4 " when there's tab, it should be indented by 4 spaces
      set shiftwidth=2 " Number of spaces to use for each step of (auto)indent
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set autoindent
      set infercase " case inferred by default, used for autocompletition in insert mode and so on..
      set t_Co=256

      set ignorecase " ignore case when searching
      set hlsearch   " highlight search matches
      set incsearch " search as you type
      set gdefault  " global matching is default
      set smartcase " use smartcase, when search query starts with Uppercase, turn off case insensitive search

      set list " show trailing characters
      set listchars=tab:·\ ,trail:¬,extends:❯,precedes:❮ " it show ¬ character when as you type, fill free to comment out set list tab:▸\ ,

      set relativenumber " set line numbering
      set number " set line numbering
      set novisualbell " do not blink
      set lazyredraw " get faster, redraw only when it's needed
      set nostartofline
      set linespace=0
      let c_no_trail_space_error = 1 " see c errors
      let java_space_errors = 1 " see java errors
      set showcmd " show the command being typed
      set ruler " always show current position
      set scrolloff=5 " Keep 5 lines (top/bottom) for scop
      set sidescrolloff=10 " Keep 10 lines at the size
      set showmode " show the current mode (Insert, Visual..)

      set expandtab " no real tabs!
      set wrap " wrap lines, we dont want long lines
      set showbreak=↪ " character show when wrapping line

      set foldenable " folding text into clusters (+) according to  {{{ }}} or comments for example.
      set foldmethod=manual " default options, we create fold manually.
      "set foldmethod=syntax " default options, we create fold manually.
      set showmatch " when use insert bracket, briefly jump to matching one (i like it, but i might be annoying)

      set infercase " case inferred by default
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set shiftwidth=2 " auto-indent amount when using >> <<
      set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
      set tabstop=4 " real tabs should be 4, and they will show with set list on

      set completeopt=longest,menu,preview
      " }}}

    " Advanced macros
    " {{{

      ":nnoremap <Leader>cc :set cursorline! cursorcolumn!<CR>
      "set cursorline
      "set cursorcolumn

      "improve autocomplete menu color
      "highlight Pmenu ctermbg=238
      " }}}
      "

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
      "autocmd FileWritePre * :call TrimWhiteSpace()
      "autocmd FileAppendPre * :call TrimWhiteSpace()
      "autocmd FilterWritePre * :call TrimWhiteSpace()
      "autocmd BufWritePre * :call TrimWhiteSpace()

      " Use relative numbering in insert mode
      "autocmd InsertEnter * :set relativenumber
      "autocmd InsertLeave * :set number

    "}}}

    " Binding
    " {{{
    " Map leader
      "let mapleader = ',' " used for lot of stuff, feel free to change it.
      let mapleader = "\<Space>"

      " Open all folds
      "nnoremap <space> :%foldopen<CR>

      " convenient window switching
      "map <C-h> <C-w>h
      "map <C-j> <C-w>j
      "map <C-k> <C-w>k
      "map <C-l> <C-w>l

      " Emacs-like keybindings
      "cnoremap <C-a> <Home>
      "cnoremap <C-e> <End>
      "inoremap <C-a> <Esc>^i
      "inoremap <C-e> <Esc>A

      " Save like a pro (CTRL+s) test4
      nnoremap <c-s> :w<cr>
      nnoremap <leader>w :w<cr>
      nnoremap <leader>ц :w<cr>

      " Quit like a pro
      nnoremap <C-M-q> :Kwbd<CR>
      nnoremap <leader>q :q<CR>
      nnoremap <leader>x :wq<cr>
      nnoremap <leader>z :bd<cr>

      " this key combination gets rid of the search highlights.
      "nmap <leader><space> :noh<cr>
      nmap <leader>, :noh<cr>

      " open vertical split and switch to it
      nnoremap <leader>v <C-w>v<C-w>l

      " open horizontal  split and switch to it
      nnoremap <leader>h :split<CR>

      " tabs - moving around, (CTRL+n to new tab)
      "map <C-t> :tabnew<CR>
      map <C-M-n> :tabedit %<CR>
      "map <M-Right> :tabnext<cr>
      "map <M-Left> :tabprevious<cr>
      "map <Left> :tabprevious<cr>
      "map <Right> :tabnext<cr>

      " buffers - moving around
      "map <A-x-Left> :bprevious<CR>
      "map <A-x-Right> :bNext<CR>
      "nnoremap <Tab> :bnext<CR>
      "nnoremap <S-Tab> :bprevious<CR>

      " Write and quit current buffer
      nnoremap <C-M-w> :wq<CR>

      " run ctags silently
      "map <leader>t :silent! !ctags -R . &<CR>

      " copy from clipboard with ease (<leader>p => paste what you copied by CTRL+c in clipboard)
      "nnoremap <leader>p "+p
      "nnoremap <leader>y "+y

      " start ack search, (using ACK tool, like grep but for source code)
      nnoremap <leader>a :Ack! 
      "nnoremap <leader>a :Ag 

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

      " cd to the directory containing the file in the buffer
      "nmap <silent> <leader>cd :lcd %:h<CR>

      " Create the directory containing the file in the buffer
      "nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

      " Swap two words
      "nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

      " Map the arrow keys to be based on display lines, not physical lines
      "map <Down> gj
      "map <Up> gk

      " Toggle hlsearch with <leader>hs
      nmap <leader>sh :set hlsearch! hlsearch?<CR>

   " }}}

    " Filetypes
    " {{{

      " HTML, XML {{{
      "augroup FTHtml
        "au!
        "autocmd FileType html,xhtml,wml,cf      setlocal ai et sta sw=2 sts=2 " set indent size and stuff
        "autocmd FileType xml,xsd,xslt           setlocal ai et sta sw=2 sts=2 ts=2
        "autocmd FileType html setlocal iskeyword+=~

      "augroup END

      " CSS, SCSS {{{
      "augroup FTCss
        "au!
        "au BufRead,BufNewFile *.scss.erb set ft=scss  " when erb-ing sccs, use scss code highlighting
        "au BufRead,BufNewFile *_spec.rb set ft+=.rspec  " when erb-ing sccs, use scss code highlighting
        "autocmd FileType css,scss  silent! setlocal omnifunc=csscomplete#CompleteCSS " autocomplete function
        "autocmd FileType css,scss  setlocal iskeyword+=-
        "autocmd FileType css,scss   setlocal ai et sta sw=2 sts=2
      "augroup END
      " }}}

      " }}}
      " Ruby {{{
      "augroup FTRuby
        "au!
        "autocmd FileType eruby,yaml,ruby        setlocal ai et sta sw=2 sts=2
        "autocmd BufNewFile,BufRead *.html.erb   set filetype=eruby.html  " load html snippets along with erb
        "autocmd FileType ruby,eruby             let g:rubycomplete_rails = 1
        "autocmd FileType ruby,eruby             let g:rubycomplete_classes_in_global=1
        "autocmd FileType ruby,eruby             let g:rubycomplete_buffer_loading = 1
      "augroup END
      " }}}
      " Custom form SnipMate
      let g:snipMate = {}
      let g:snipMate.scope_aliases = {}
      let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
      let g:snipMate.scope_aliases['vimwiki'] = 'markdown,vimwiki'

      " Coffescript
      " {{{
      "au BufNewFile,BufReadPost *.coffee setl sw=2 expandtab
      "}}}

      "augroup C
        "au!
        ""autocmd FileType c,cpp,h,hpp     colorscheme molokai
      "augroup END

      " Git {{{
      "augroup FTGit
        "au!
        "autocmd FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
        "autocmd FileType gitcommit setlocal spell
      "augroup END
      " }}}


    " }}}

    " Plugins
    " {{{

      " Html5 plugin
      " {{{
      "let g:html5_event_handler_attributes_complete = 0
      "let g:html5_rdfa_attributes_complete = 0
      "let g:html5_microdata_attributes_complete = 0
      "let g:html5_aria_attributes_complete = 0
      " }}}

      " CtrlP
      " {{{
      " Ag search
      "let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
            "\ --ignore .git
            "\ --ignore .svn
            "\ --ignore .hg
            "\ --ignore .DS_Store
            "\ --ignore "**/*.pyc"
            "\ -g ""'
      "let g:ctrlp_clear_cache_on_exit = 1
      "set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
      "nnoremap <F3> :CtrlP<CR>
      "nnoremap <F4> :CtrlPBuffer<CR>
      "nnoremap <F2> :CtrlPDir<CR>
      "let g:ctrlp_custom_ignore = {
            "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
            "\ 'file': '\v\.(exe|so|dll)$'
            "\ }

      "map <leader>f :CtrlP<cr>
      "map <leader>b :CtrlPMRU<cr>
      "map <leader>cv :CtrlP app/views<cr>
      "map <leader>cc :CtrlP app/controllers<cr>
      "map <leader>cm :CtrlP app/models<cr>
      " }}}

      " Gist
      " {{{
      "let g:gist_clip_command = 'xclip -selection clipboard'
      "let g:gist_detect_filetype = 1
      "let g:gist_open_browser_after_post = 1
      "let g:gist_browser_command = 'google-chrome %URL% &' " NOTE: use your browser!
      "let g:gist_show_privates = 1
      " }}}

      " supertab {{{
      "let g:SuperTabDefaultCompletionType = 'context'
      "let g:SuperTabContextDefaultCompletionType = '<c-n>'
      " }}}

      " syntastic {{{
      "nnoremap <C-E> :SyntasticCheck<CR>
      "let g:syntastic_auto_loc_list=1
      "let g:syntastic_enable_signs=1
      "let g:synastic_quiet_warnings=1

      " }}}

      " Rubycomplete {{{
      "let g:rubycomplete_rails=1
      "let g:rubycomplete_classes_in_global=1
      "let g:rubycomplete_buffer_loading=1
      "let g:rubycomplete_include_object=1
      "let g:rubycomplete_include_objectspace=1
      " }}}

      " Gundo {{{
      "nnoremap <leader>gu :GundoToggle<CR>
      " }}}

      " Fugitive {{{
      nnoremap <leader>gs :Gstatus<cr>
      nnoremap <leader>gc :Gcommit 
      nnoremap <leader>gd :Gdiff<cr>
      " }}}

      " NERDTree {{{
      "nnoremap <F1> :NERDTreeToggle<CR>
      nnoremap <leader>n :NERDTreeToggle<CR>
      let g:NERDTreeMinimalUI=1
      "let g:NERDTreeDirArrows=1
      let g:NERTreeHighlightCursorLine=1
      "let g:NERDTreeShowBookmarks=1
      "let g:NERDTreeShowLineNumbers=1
      "}}}
      "
      " NerdTree Tabs {{{
      "nnoremap <c-F1> :NERDTreeTabsToggle<CR>
      " }}}

    " }}}

      " Bindings
      " {{{
      "nnoremap <c-o> :browse tabnew :pwd<CR>
      "nnoremap <C-M-s> :browse saveas :pwd<CR>
      "nnoremap <C-M-f> :set guifont=*<CR>

      " Map Alt-# to switch tabs
      "map  <M-0> 0gt
      "imap <M-0> <Esc>0gt
      "map  <M-1> 1gt
      "imap <M-1> <Esc>1gt
      "map  <M-2> 2gt
      "imap <M-2> <Esc>2gt
      "map  <M-3> 3gt
      "imap <M-3> <Esc>3gt
      "map  <M-4> 4gt
      "imap <M-4> <Esc>4gt
      "map  <M-5> 5gt
      "imap <M-5> <Esc>5gt
      "map  <M-6> 6gt
      "imap <M-6> <Esc>6gt
      "map  <M-7> 7gt
      "imap <M-7> <Esc>7gt
      "map  <M-8> 8gt
      "imap <M-8> <Esc>8gt
      "map  <M-9> 9gt
      "imap <M-9> <Esc>9gt
    " }}}


      "
      " }}}
    " }}}
" }}}

" Misc
" {{{
" }}}

" Haml
"au BufRead,BufNewFile *.hamlc set ft=haml

:ino <C-C> <Esc>

 " Run the current file with rspec
 "map <Leader>vrb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

 " Prompt for a command to run
 "map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 "map <Leader>vl :VimuxRunLastCommand<CR>

 " Inspect runner pane
 "map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 "map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 "map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 "map <Leader>vz :call VimuxZoomRunner()<CR>

"let g:VimuxHeight = "26"
"let g:VimuxOrientation = "h"


"if exists('$TMUX')
  "function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    "let previous_winnr = winnr()
    "silent! execute "wincmd " . a:wincmd
    "if previous_winnr == winnr()
      "call system("tmux select-pane -" . a:tmuxdir)
      "redraw!
    "endif
  "endfunction

  "let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  "let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  "let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  "nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  "nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  "nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  "nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
"else
  "map <C-h> <C-w>h
  "map <C-j> <C-w>j
  "map <C-k> <C-w>k
  "map <C-l> <C-w>l
"endif


"Rocket hash
nmap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<cr>
nmap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<cr>

" auto-pairs plugin on
"let g:AutoPairsFlyMode = 1

"Hightlight diff
"highlight DiffAdd    term=reverse ctermbg=148
"highlight DiffChange term=reverse ctermbg=081
"highlight DiffText   term=reverse ctermbg=084
"highlight DiffDelete term=reverse ctermbg=160
" Hide tildas
"hi NonText guifg=bg
" Column
"highlight SignColumn guibg=bg
" Visual block color
"highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40
" Drop Down
"highlight Pmenu ctermfg=103 ctermbg=231 guifg=#8584ae guibg=Grey40
" Constant
"hi Constant       term=underline ctermfg=214 guifg=#6dba09
"hi rubyConstant ctermfg=220 guifg=#6dba09
"hi Title        ctermfg=220 guifg=#6dba09

"Open NerdTree on start
"autocmd VimEnter * NERDTree

" Dash search word under cursor in Dash
:nmap <silent> <leader>d <Plug>DashSearch

" Concealing Characters
"let b:javascript_fold = 1

" vim-go enabling
"let g:go_highlight_operators = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_interfaces = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_generate_tags = 1
"let g:go_fmt_command = "goimports"

" Improve regexp
set re=1
set regexpengine=1

" Allow JSX in normal JS files
"let g:jsx_ext_required = 0

" Tagbar
"nnoremap <leader>t :Tagbar<cr>
"let g:tagbar_compact = 1
"let g:tagbar_sort = 0
" Ctags
"let g:tagbar_type_markdown = {
    "\ 'ctagstype' : 'markdown',
    "\ 'kinds' : [
        "\ 'h:Headers',
        "\ 'l:Links',
        "\ 'i:Images'
    "\ ]
"\ }
"let g:tagbar_type_vimwiki = {
    "\ 'ctagstype' : 'markdown',
    "\ 'sort' : 0,
    "\ 'kinds' : [
        "\ 'h:Headers',
        "\ 'l:Links',
        "\ 'i:Images'
    "\ ]
"\ }
"if executable('ripper-tags')
  "let g:tagbar_type_ruby = {
      "\ 'kinds'      : ['m:modules',
                      "\ 'c:classes',
                      "\ 'C:constants',
                      "\ 'F:singleton methods',
                      "\ 'f:methods',
                      "\ 'd:describes',
                      "\ 'a:aliases'],
      "\ 'kind2scope' : { 'c' : 'class',
                       "\ 'm' : 'class' },
      "\ 'scope2kind' : { 'class' : 'c' },
      "\ 'ctagsbin'   : 'ripper-tags',
      "\ 'ctagsargs'  : ['-f', '-']
      "\ }
"endif

" Spell check
set spell spelllang=ru,en
inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
"
" Slim
"autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

" Exclude dirs from search
set wildignore+=*/node_modules/*

" Keyjumps
"nnoremap * *``
"nnoremap * :keepjumps normal *``<cr>
":let @/="variable"

" NERDTree
" Bookmark related to project
if isdirectory(expand(".git"))
  let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
endif

" FZF
"set rtp+=/usr/local/opt/fzf
"set rtp+=~/.fzf
"nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>; :Tags<CR>
nmap <Leader>' :Buffers<CR>
"command!      -bang -nargs=* Tags                      call fzf#vim#tags(<q-args>, {'options': '--reverse --nth 1..5'}, <bang>0)
command!      -bang -nargs=* Tags                      call fzf#vim#tags(<q-args>, {'options': '--reverse --nth .. --tiebreak=length'}, <bang>0)
command! -bar -bang -nargs=? -complete=buffer Buffers  call fzf#vim#buffers(<q-args>, {'options': '--reverse'}, <bang>0)
command!      -bang -nargs=? -complete=dir Files       call fzf#vim#files(<q-args>, {'options': '--reverse'}, <bang>0)

let g:fzf_layout = { 'window': '20split' }

set termguicolors

let g:fzf_colors =
\ { 'fg':      ['fg', 'Keyword'],
  \ 'bg':      ['bg', 'Keyword'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" respect .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" term background
"hi Terminal ctermbg=lightgrey ctermfg=blue guibg=#1b1b24 guifg=blue

" ALE
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1

" plasticboy/vim-markdown
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_toc_autofit = 1
"let g:vim_markdown_autowrite = 1
"let g:vim_markdown_new_list_item_indent = 2 " 2 spaces offset for lists

let g:pandoc#filetypes#pandoc_markdown = 0

" Fugitive
" exclude fugitive files from buffer
if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
"
" Taboo
let g:taboo_tab_format = " %N %f%m "

" Ack=grep
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
else
  let g:ackprg = "ack -H --nocolor --nogroup --column"
endif

" Airline
"let g:airline_powerline_fonts = 1

" Set Ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Fn mappings
nnoremap <F2> :EasyAlign<CR>
vnoremap <F2> :EasyAlign<CR>

" Abbrs
":ab platfrom platform
":ab platfrom_id platform_id
":ab ir_platfrom ir_platform

" Persistent Undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" Select jump
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

nmap <Leader>j :call GotoJump()<CR>

" session
:let g:session_autoload = 'prompt'
:let g:session_autosave = 'no'

" tagbar
"nmap <F8> :TagbarToggle<CR>
"let g:tagbar_type_ruby = {
    "\ 'kinds' : [
        "\ 'm:modules',
        "\ 'c:classes',
        "\ 'd:describes',
        "\ 'C:contexts',
        "\ 'i:it',
        "\ 'f:methods',
        "\ 'F:singleton methods'
    "\ ]
"\ }

" vim-ruby
"let ruby_fold = 1
"let ruby_spellcheck_strings = 1
"let ruby_foldable_groups = 'if def do begin case for { [ % / string : # << _END_'

" elzr/vim-json
"setlocal foldmethod=syntax
"let g:vim_json_syntax_conceal = 0

" vue
"set suffixesadd+=.vue

" vitality
"let g:vitality_shell_cursor = 1

" jumps
"nnoremap <leader>n :cn<CR>zv
"nnoremap <leader>p :cp<CR>zv

" mappings
map <Up> :Copen!<CR>
map <Down> :Copen<CR>
map <Right> :cn<CR>zv
map <Left> :cp<CR>zv

" Language support
set keymap=russian-jcukenwin
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set imi=0

" Konfekt/FastFold
" folds are only updated manually but not when saving the buffer
let g:fastfold_savehook = 0
"autocmd BufWritePost *.go normal! zv

" run as login shell (not command mode)
" set shellcmdflag=-ic

" Formatting
set tw=80

" PlantUML
"let g:slumlord_plantuml_jar_path = "/usr/local/Cellar/plantuml/1.2019.5/libexec/plantuml.jar"
"autocmd Filetype,BufEnter plantuml set makeprg=plantuml\ %

" Buffers
set hidden
set autowrite

" Vimtex
"let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'


set secure " to the end of the file

" Deopete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({ 'auto_complete_delay': 1000 })
