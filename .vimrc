"Vundle Section Start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" ADD YOUR PLUGIN

call vundle#end()
filetype plugin indent on
"Vundle Section End

if strftime('%H') >= 21 || strftime('%H') <= 9
  set background=dark
else
  set background=light
endif

if !has('gui_running')
  set t_Co=256
  if has('termguicolors')
    set termguicolors
  end
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  set timeoutlen=1000 ttimeoutlen=0
endif

syntax on

highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
