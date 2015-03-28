let g:ctrlp_dont_split = 'NERD'
let NERDTreeHijackNetrw = 1
let NERDTreeShowHidden = 1

function! splittednerdtree#revealFile()
  try | let p = g:NERDTreePath.New(expand("%:p")) | catch | endtry
  edit .
  if exists("p")
    try | call b:NERDTreeRoot.reveal(p) | catch | endtry
  endif
endfunction
