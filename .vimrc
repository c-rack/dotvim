" =============================================================================
"
" Constantin's vim configuration
"
" https://github.com/c-rack/dotvim
"
" Execute "install.sh" to automatically install the plugins.
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
set cursorline                 " highlight current line
set hlsearch                   " highlight search results
set incsearch                  " search as characters are entered
set number                     " show line numbers
set ruler                      " show line,column in status bar
set smartindent                " smart autoindenting when starting a new line
set showmatch                  " when your cursor moves over a parenthesis-like
                               " character, the matching one will be
                               " highlighted as well

" -----------------------------------------------------------------------------
" Tab stop
" -----------------------------------------------------------------------------
set expandtab                  " convert tabs to spaces
set tabstop=4                  " default tabstop
set softtabstop=4              " makes the spaces feel like real tabs
set shiftwidth=4               " number of spaces inserted for indentation

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
" Highlight text that goes over the 120 column limit
" -----------------------------------------------------------------------------
highlight OverLength ctermbg=red ctermfg=white guibg=#603030
match OverLength /\%120v.\+/

" -----------------------------------------------------------------------------
" Remove trailing whitespace on write
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
" -----------------------------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//e

" -----------------------------------------------------------------------------
" Move lines up and down
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
" Character "º" is <A-j> on my keyboard, character "∆" is <A-k>.
" You may want to adjust this to match your keyboard settings.
" -----------------------------------------------------------------------------
nnoremap º :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap º <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .-2<CR>==gi
vnoremap º :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" -----------------------------------------------------------------------------
" Enable syntax highlighting for *.md markdown files
" -----------------------------------------------------------------------------
" autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" -----------------------------------------------------------------------------
" Enable syntax highlighting for *.adoc AsciiDoc files
" -----------------------------------------------------------------------------
autocmd BufNewFile,BufFilePre,BufRead *.adoc set filetype=asciidoc

" -----------------------------------------------------------------------------
" Enable CtrlP plugin (needs to be installed with "install.sh")
" -----------------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Useful commands:
"
" D      - delete from current cursor position until end of line
" dd     - delete current line
" x      - Delete character
" :d[n]  - Delete [n] lines and copy to clipboard
" :p     - Paste clipboard
" :y     - Copy current line to clipboard
" :Ex    - Show file explorer
" :!cmd  - Execute cmd on shell, for example ":!mvn test"
" J      - Join current line with next one, removing newline
" ~      - Switch current position between uppercase and lowercase
" @:     - Repeat last command entered with ":"
" @@     - Further repeat last command

" Navigation:
"
" k      - Go up
" l      - Go right
" h      - Go left
" j      - Go down
" w      - Go to next word
" b      - Go to previous word
" 0      - Go to first column
" $      - Go to last column
" :0     - Go to first line of document
" :$     - Go to last line of document
" Ctrl-p - Switch file

