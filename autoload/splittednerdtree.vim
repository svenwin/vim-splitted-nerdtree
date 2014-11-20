let g:ctrlp_dont_split = 'nerdtree'
let NERDTreeHijackNetrw=1

function! splittednerdtree#revealFile()
  try | let p = g:NERDTreePath.New(expand("%:p")) | catch | endtry
  edit %:p:h
  try | call b:NERDTreeRoot.reveal(p) | catch | endtry
endfunction
