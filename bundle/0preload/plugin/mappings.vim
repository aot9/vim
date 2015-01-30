au BufReadPre *.py map <F5> :w<CR> :!python %<CR>
au BufReadPre *.sh map <F5> :w<CR> :!./% <CR>
au BufReadPre *.c,*.cpp,*.h,*.hpp map<F5> :make<CR><CR> :copen<CR>
au BufNewFile,BufRead *.cmm setf cmm

autocmd VimLeave * call system("xsel -ib", getreg('+'))
"Clipboard yank and paste
vnoremap yc "+y
nnoremap pc "+p

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-t> :TagbarToggle<CR>

"Toggle paste mode
nnoremap <silent> <F2> :set paste!<CR> 
"Toggle expandtab feature. Useful for
"kernel development
noremap <silent> <F3> :set noexpandtab!<CR>
noremap <silent> <F4> :call ToggleSpacesHl()<CR>

"Move the through buffers
nmap <silent> gb :bnext<CR>

let c = 1
while c <= 10
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile


