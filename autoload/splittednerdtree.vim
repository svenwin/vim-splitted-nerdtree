let g:ctrlp_dont_split = 'nerdtree'
let NERDTreeHijackNetrw=1

function! splittednerdtree#revealFile()
  try
    let p = g:NERDTreePath.New(expand("%:p"))
    edit %:p:h
    call b:NERDTreeRoot.reveal(p)
  catch /^NERDTree.InvalidArgumentsError/
    call nerdtree#echo("no file for the current buffer")
    edit .
    return
  endtry
endfunction
