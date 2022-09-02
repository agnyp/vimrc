" Switch quickly between pager and normal mode
" using F5-Key
function! LessMode()
  if g:lessmode == 0
    let g:lessmode = 1
    let onoff = 'on'
    " Scroll half a page down
    noremap <script> d <C-D>
    " Scroll one line down
    noremap <script> j <C-E>
    " Scroll half a page up
    noremap <script> u <C-U>
    " Scroll one line up
    noremap <script> k <C-Y>
  else
    let g:lessmode = 0
    let onoff = 'off'
    unmap d
    unmap j
    map j gj
    unmap u
    unmap k
    map k gk
  endif
  echohl Label | echo "Less mode" onoff | echohl None
endfunction
let g:lessmode = 0
