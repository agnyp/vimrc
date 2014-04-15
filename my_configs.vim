" Load scripts
source ~/.vim_runtime/my_scripts/autoread.vim

" Smart way to move between windows
" like it that way better ...
unmap <C-h>
unmap <C-l>

map gh <C-W>h
map gl <C-W>l

" Settings for solarized fonts
set t_Co=16
let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized

" Set Adobe Source Code Thingie
set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11

" linenumbers
set number

" Indent to 2
set shiftwidth=2
set tabstop=2

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
    unmap u
    unmap k
  endif
  echohl Label | echo "Less mode" onoff | echohl None
endfunction
let g:lessmode = 0
nnoremap <F5> :call LessMode()<CR>
inoremap <F5> <Esc>:call LessMode()<CR>

" Brackets and stuff
inoremap $r #{}<esc>i
vnoremap $r <esc>`>a}<esc>`<i#{<esc>
