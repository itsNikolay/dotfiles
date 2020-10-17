let g:startify_session_dir = '~/projects/itsNikolay/vim-sessions'
let g:startify_session_delete_buffers = 1

" \ { 'type': 'files',     'header': ['   MRU']            },
" \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
" \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
" \ { 'type': 'commands',  'header': ['   Commands']       },
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]

let g:startify_bookmarks = [
      \ {'c': '~/.config/nvim/init.vim'},
      \ {'d': '~/Downloads'},
      \ ]
