let mapleader = "\<Space>"

fun! AddToWatch()
  let word = expand("<cword>")
  call vimspector#AddWatch(word)
endf

fun! JestStrategy(cmd)
  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
  call vimspector#LaunchWithSettings( #{ configuration: 'jest', TestName: testName } )
endf
let g:test#custom_strategies = { 'jest': function('JestStrategy') }

cnoremap w!! %!sudo tee > /dev/null %

inoremap <C-C> <Esc>
inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <c-l> <c-o>$<c-j>
inoremap <c-p> <c-r>*

nnoremap <C-M-q> :Kwbd<CR>
nnoremap <C-M-w> :wq<CR>
nnoremap <C-c> <esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
nnoremap <buffer> <silent> <leader>e :MarkdownEditBlock<CR>
nnoremap <leader>, :noh<CR>
nnoremap <leader>1 :Telescope filetypes<CR>
nnoremap <leader>= ggVG=''
nnoremap <leader>a :Ack! 
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>c :EasyAlign<CR>
" nnoremap <leader>d <Plug>DashSearch
nnoremap <leader>dB :call vimspector#ClearBreakpoints()<CR>
nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>dc :call vimspector#Continue()<CR>
nnoremap <leader>di :call vimspector#StepInto()<CR>
nnoremap <leader>dl :call vimspector#Launch()<CR>
nnoremap <leader>do :call vimspector#StepOut()<CR>
nnoremap <leader>dr :call vimspector#Restart()<CR>
nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <leader>dv :call vimspector#StepOver()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dw :call AddToWatch()<CR>
nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>l mQviwu`Q
nnoremap <leader>q :q<CR>
nnoremap <leader>s :A<CR>
nnoremap <leader>t :Telescope tags<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tj :TestNearest -strategy=jest<CR>
nnoremap <leader>u mQviwU`Q
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>w :w<CR>
nnoremap <leader>x :wq<CR>
vnoremap <leader>c :EasyAlign<CR>
nnoremap `A :AsyncRun! 
nnoremap `a :AsyncRun 
nnoremap <nowait> gl :FocusTerminalDispatch<CR>
