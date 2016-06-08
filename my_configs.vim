" Load scripts
source ~/.vim_runtime/my_scripts/autoread.vim
source ~/.vim_runtime/my_scripts/less_mode.vim

" Configure Gundo
let g:gundo_width = 60
let g:gundo_preview_height = 40

" Watch for changes
" silent execute WatchForChanges('*', {'toggle':1,'autoread':1})
" au FocusGained,BufEnter,CursorMoved * :silent! !
au FocusGained,BufEnter,CursorMovedI,CursorMoved * :silent! !
" au FocusLost,WinLeave * :silent! w

" Vimdiff-stuff
" ignore whitespace in vimdiff
if &diff
  " diff mode
  set diffopt+=iwhite
endif
autocmd FilterWritePre * if &diff | setlocal wrap< | endif


" Smart way to move between windows
" like it that way better ...
unmap <C-h>
unmap <C-l>
map gh <C-W>h
map gl <C-W>l

" map 0 back
map 0 0
nmap # '

" remove all indentation from line
map <C-L> i0<C-d><esc>

" Function keys
nnoremap <F3> :TlistToggle<CR>
nnoremap <F4> :GundoToggle<CR>
nnoremap <F5> :call LessMode()<CR>
inoremap <F5> <Esc>:call LessMode()<CR>
" remove trailing whitespace
map <F6> :%s/\s\+$<CR>:noh<CR>
map <F7> ]c
map <F8> [c
map <F9> :set wrap<cr>
map <C-F9> :set nowrap<cr>

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

" some leader-stuff
map <leader>h :map <Space <del>><cr>
map <leader>c :q<cr>
map <leader>s <C-F>
map <leader>t <C-S>
map <leader>l :source ~/.vimrc<cr>
map <leader>fo <esc>02f'a, :focus => true<esc>
map <leader>fO <esc>02f"a, :focus => true<esc>
map <leader>fn <esc>02f'f,dfe<esc>
map <leader>fN <esc>02f"f,dfe<esc>
map <leader>d :mksession!<CR>:xa<CR>
nmap <leader>cf ct_
nmap <silent> <leader>y :YRShow<CR>

autocmd VimEnter * unmap! <leader>p

" Brackets and stuff
inoremap $r #{}<esc>i
vnoremap $r <esc>`>a}<esc>`<i#{<esc>
inoremap $t "#{}"<esc>i
vnoremap $t <esc>`>a}"<esc>`<i"#{<esc>h

" move lines
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv
