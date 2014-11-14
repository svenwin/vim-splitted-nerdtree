let g:ctrlp_dont_split = 'nerdtree'
let NERDTreeHijackNetrw=1

function! splittednerdtree#revealFile()
  let p = g:NERDTreePath.New(expand("%:p"))
  edit %:p:h
  call b:NERDTreeRoot.reveal(p)
endfunction
