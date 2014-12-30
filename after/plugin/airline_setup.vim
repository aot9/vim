" airline plugin setup
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z']
      \ ]
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:rline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'p'
let g:tagbar_left = 1
let g:bufferline_fname_mod = ':t'
let g:airline#extensions#bufferline#enabled=1
let g:airline_enable_bufferline=1
let g:airline#extensions#bufferline#overwrite_variables = 0
let g:bufferline_echo = 0
let g:bufferline_solo_highlight = 1
let g:airline_section_a = airline#section#create(['mode',' ','paste', ' ', '%{IsNoexpandtab()}', ' ', '%{CheckSpaceHl()}'])
let g:airline_section_z = airline#section#create(['%l',':','%c']) 
