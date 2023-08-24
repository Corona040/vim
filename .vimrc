"Background color
set bg=light
"Highlights searches
set hlsearch
"Searches incrementaly (as you type)
set incsearch
"Sets default clipboard to system clipboard
set clipboard=unnamedplus
"Tab size = 4
set tabstop=4
set softtabstop=4
set shiftwidth=4
"Converts tabs to spaces
set expandtab
set autoindent
set fileformat=unix

"Some basics
    set nocompatible
    "filetype plugin on
    syntax on
    "colorscheme gruvbox
    set encoding=utf-8
    set number relativenumber
"Enable autocompletion ctrl+n to activate
    set wildmode=longest,list,full
"Disables automatic commenting on newline
    autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Splits open at the bottom and right
    set splitbelow splitright
"* Remaps
"Shortcutting split navigation, saving a keypress:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

"Replace all is aliased to S.
    nnoremap S :%s//g<left><left>
"Newtab
    nnoremap <silent> <C-t> :tabnew<CR>
"Paste from system clipboard with ctrl+i instead of shift insert
    map <S-Insert> <C-i>

"Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
"   vnoremap <C-c> "+y
"   map <C-p> "+P

"Automatically deletes all trailing whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

"When shortcut files are updated, renew bash and vifm configs with new material:
"    autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

"Run xrdb whenever Xdefaults or Xresources are updated
    autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
