call plug#begin('~/.vim/plugged')

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'olical/vim-syntax-expand'

" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Linting
Plug 'w0rp/ale'

" Colours
Plug 'ajh17/Spacegray.vim'
Plug 'jakwings/vim-colors'
Plug 'arcticicestudio/nord-vim'

" autoComplete
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Automatically match pairs intelligentily
Plug 'Raimondi/delimitMate' 

" edit brackets, quotes, parentheses, xml tags etc. easily
Plug 'tpope/vim-surround'

" NERD tree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" indent guide
"Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'

" git wrapper
Plug 'tpope/vim-fugitive'


" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" devicons 
Plug 'ryanoasis/vim-devicons'

" super tab
Plug 'ervandew/supertab'

" Window swap
Plug 'wesQ3/vim-windowswap'

" auto comment
Plug 'tomtom/tcomment_vim'

" nerdtree colours
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Rust 
Plug 'rust-lang/rust.vim'

" Plug 'heavenshell/vim-jsdoc'
" handlebar (ember)
" Plug 'mustache/vim-mustache-handlebars'

" markdown
Plug 'iamcco/markdown-preview.vim'

" esaymotion
Plug 'easymotion/vim-easymotion'

"incsearch
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'christoomey/vim-tmux-navigator'

" Initalize plugin system
call plug#end()

