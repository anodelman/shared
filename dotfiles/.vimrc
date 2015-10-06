call pathogen#infect()
call pathogen#helptags()
:syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype plugin indent on
set ls=2
set statusline+=%F
set hlsearch
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" highlight in red extra spaces before EOL
highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
