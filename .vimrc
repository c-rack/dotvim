" Constantin's vim configuration
" https://github.com/c-rack/dotvim

" General settings ------------------------------------------------------------
set background=dark " use dark background
set number          " show line numbers
set cul             " highlight current line
set ruler           " show line,column in status bar

" Change cursor shape in different modes --------------------------------------
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Highlight text that goes over the 80 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#603030
match OverLength /\%80v.\+/

