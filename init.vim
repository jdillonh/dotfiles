set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

"a very nice color scheme
let g:gruvbox_contrast_light='soft'
let g:gruvbox_contrast_dark='soft'

let g:airline_theme='gruvbox'
colorscheme gruvbox

"love 2d shortcut
command Love w | ! \open -n -a love .

"mappings
noremap <leader>n :NERDTreeToggle <CR>
