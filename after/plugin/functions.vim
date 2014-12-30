"Check if noexpandtab option is set
function! IsNoexpandtab()
  if &expandtab == "0"
    return "next"
  else
    return ""
  endif
endfunction

"Toggle trailing whitespace highlighting function
function! ToggleSpacesHl()
  if !exists("g:isSpaceColored")
    let g:isSpaceColored=0
  endif
  let g:isSpaceColored=!g:isSpaceColored
  if g:isSpaceColored
    hi TrailingWhitespace ctermbg=red
  else
    hi TrailingWhitespace ctermbg=NONE
  endif
endfunction

"Check isSpaceColored is true
function! CheckSpaceHl()
  if !exists("g:isSpaceColored")
    let g:isSpaceColored=0
  endif
  if g:isSpaceColored
    return "hls"
  else
    return ""
  endif
endfunction

"Delete unwanted spaces at the end of lines
function! TrimSpaces()
  try
    %s/\s\+$//
  catch
    return
  endtry
endfunction
