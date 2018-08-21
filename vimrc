set showcmd
let mapleader=','
set termguicolors

set number 
set mouse=a
set so=5
"gets rid of redundant mode display. airline does it now
set noshowmode

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"processing3 in vim
Plug 'sophacles/vim-processing'

set tabstop=2
set shiftwidth=2
set expandtab

"different colored parenthesis:
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1


"colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'reedes/vim-colors-pencil'
let g:pencil_higher_contrast_ui = 0
Plug 'morhetz/gruvbox'
"NERDTree 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"goyo distraction-free writing
Plug 'junegunn/goyo.vim'
"limelight for even less distractions wow
Plug 'junegunn/limelight.vim'

"for the ultimate distranction free experience call 'focus'
command Focus Goyo | Limelight!! 

Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 1
call plug#end()


colorscheme 0x7A69_dark  "babymate256  "pencil-dark peach puff
let g:airline_theme='wombat'

"my short cuts:
"   enter makes a newline in normal mode
map <Enter> o<ESC>
"map <S-Enter> O<ESC>
noremap <leader>d d$
noremap <leader>wq :wq<cr>
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader>Q :qall!<cr>
command-bang Q q<bang>

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0


" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1


function! s:goyo_enter()
  
    silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  highlight StatusLineNC ctermfg=white
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
