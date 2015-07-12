" =============================================================================
"
" Constantin's vim configuration
"
" https://github.com/c-rack/dotvim
"
" =============================================================================
"
" This is free and unencumbered software released into the public domain.
"
" Anyone is free to copy, modify, publish, use, compile, sell, or
" distribute this software, either in source code form or as a compiled
" binary, for any purpose, commercial or non-commercial, and by any
" means.
"
" In jurisdictions that recognize copyright laws, the author or authors
" of this software dedicate any and all copyright interest in the
" software to the public domain. We make this dedication for the benefit
" of the public at large and to the detriment of our heirs and
" successors. We intend this dedication to be an overt act of
" relinquishment in perpetuity of all present and future rights to this
" software under copyright law.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
" OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
" ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
" OTHER DEALINGS IN THE SOFTWARE.
"
" For more information, please refer to <http://unlicense.org/>


" -----------------------------------------------------------------------------
" General settings
" -----------------------------------------------------------------------------
set backspace=indent,eol,start " make backspace work like most other apps
set background=dark            " use dark background
set number                     " show line numbers
set cul                        " highlight current line
set ruler                      " show line,column in status bar

" -----------------------------------------------------------------------------
" Enable syntax highlighting
" -----------------------------------------------------------------------------
syntax on

" -----------------------------------------------------------------------------
" Change cursor shape in different modes
" -----------------------------------------------------------------------------
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" -----------------------------------------------------------------------------
" Highlight text that goes over the 80 column limit
" -----------------------------------------------------------------------------
highlight OverLength ctermbg=red ctermfg=white guibg=#603030
match OverLength /\%80v.\+/



" Useful commands:
"
" D      - delete from current cursor position until end of line
" dd     - delete current line
" :0     - Go to first line of document
" :$     - Go to last line of document
" 0      - Go to first column
" $      - Go to last column
" x      - Delete character
" :d[n]  - Delete [n] lines and copy to clipboard
" :p     - Paste clipboard
" :y     - Copy current line to clipboard
" k      - Go up
" l      - Go right
" h      - Go left
" j      - Go down
" :Ex    - Show file explorer
" :!cmd  - Execute cmd on shell, for example ":!mvn test"
" J      - Join current line with next one, removing newline

