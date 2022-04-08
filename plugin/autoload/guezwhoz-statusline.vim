function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "Normal"
  elseif l:mode==?"v"
    return "Visual"
  elseif l:mode==#"i"
    return "Insert"
  elseif l:mode==#"R"
    return "Replace"
  elseif l:mode==?"s"
    return "Select"
  elseif l:mode==#"t"
    return "Terminal"
  elseif l:mode==#"c"
    return "Command"
  elseif l:mode==#"!"
    return "Shell"
  elseif l:mode==#":"
    return "Options"
  endif
endfunction

set laststatus=2
set statusline+=\ %#vimMode# 
set statusline+=\ %{StatuslineMode()}\ 
set statusline+=%#rst#
set statusline+=\   
set statusline+=%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ 𝖫𝗇%l,
set statusline+=\ 𝖢𝗈𝗅%c
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %p%%\  
