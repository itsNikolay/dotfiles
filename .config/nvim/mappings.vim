let mapleader = "\<Space>"

cnoremap w!! %!sudo tee > /dev/null %

inoremap <C-C> <Esc>
inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <c-l> <c-o>$<c-j>
inoremap <c-p> <c-r>*

vnoremap <leader>c :EasyAlign<CR>
" vnoremap <nowait> <leader>g :<c-u>TranslateRangeFun<CR>

nnoremap <C-M-q> :Kwbd<CR>
nnoremap <C-M-w> :wq<CR>
nnoremap <C-c> <esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
nnoremap <Leader>1 :Telescope filetypes<CR>
nnoremap <Leader>b :Telescope buffers<CR>
nnoremap <Leader>f :Telescope find_files<CR>
nnoremap <Leader>t :Telescope tags<CR>
nnoremap <buffer> <silent> <leader>e :MarkdownEditBlock<CR>
nnoremap <leader>, :noh<CR>
nnoremap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<CR>
nnoremap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
nnoremap <leader>= ggVG=''
nnoremap <leader>a :Ack! 
nnoremap <leader>c :EasyAlign<CR>
nnoremap <leader>d <Plug>DashSearch
" nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>l mQviwu`Q
nnoremap <leader>q :q<CR>
nnoremap <leader>s :A<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>u mQviwU`Q
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>w :w<CR>
nnoremap <leader>x :wq<CR>
nnoremap `A :AsyncRun! 
nnoremap `a :AsyncRun 
nnoremap <nowait> gl :FocusTerminalDispatch<CR>
nnoremap <leader>gs :Gstatus<CR>
