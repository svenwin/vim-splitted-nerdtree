let g:ctrlp_dont_split = 'NERD'
let NERDTreeHijackNetrw = 1
let NERDTreeShowHidden = 1

function! splittednerdtree#revealFile()
  try | let p = g:NERDTreePath.New(expand("%:p")) | catch | endtry

  edit .

  try
    let node = b:NERDTree.root.reveal(p)
    call NERDTreeRender()
    call node.putCursorHere(1,0)
  catch
  endtry
endfunction
