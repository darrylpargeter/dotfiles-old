""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Key Binds Cheat Sheet
"
" <leader> = , leader key
" hh  = remap the esc key
" <leader>ev = open vimrc
" <leader>rv = reload vimrc while vim is open
" <leader>" = add double quotes around word
" <leader>' = add single quotes around word
" <leader>/ = toggle hightlight
" - = move a line down by one
" _ = move a line up by one
" Ctrl+W R = swap top/bottom or left/right split
" <leader>ww = use to move a window to a new location
" gcc = comment out the current line
" <leader>1 = locate current file in NERDTree
" <leader>n = open/close NERDTree
" <tab> = select selected snip/autocomplete
" <C-n> =  move selection down
" <C-p> = move selection up
" <leader>ti = toggle indent lines
" <leader>c = toggle conceal meant in file
" TODO:// sort out indent guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" get the plugin file
if filereadable(expand("~/.dotfiles/vim/plug.vim"))
  source ~/.dotfiles/vim/plug.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable all the 'improved' features of vim
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
" filetype plugin on
" filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader to , over esc
let mapleader = ","

" set line numbers, as relative numbers
set nu relativenumber

" Add the system clip board
set clipboard=unnamed

" make backspace work like most other apps
set backspace=2

" Set up the split windows
set splitbelow
set splitright

" remap the <esc> key
inoremap hh <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Vim user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg*,*/.svn/*,*/.DS_Store

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" " Makes search act like search in modern browsers
" set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Make vim reqexps use verymagic (more like PCREs, write \w+ instead if \w\+)
" nnoremap / /\v
" cnoremap %s/ %smagic/
" cnoremap \>s/ \>smagic/
" nnoremap :g/ :g/\v
" nnoremap :g// :g//

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Highlight search matches with an underscore (nice because it keeps
" the matched text very readable still)
" hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Automagically resize splits when the host is resized
autocmd VimResized * wincmd =

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Colours and Fonts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Set background colour
set background=dark

" Set utf8 as standard encoding and en_GB as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set the gui font for dev icons
set guifont=Font\ Awesome\ 12
" enable 256 colors
set t_Co=256

" Access colour present in 256 colourspace
let base16colorspace=256


" colorscheme (colour scheme comes from plug in)
" colorscheme moody 
colorscheme nord
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Files, backups and undo 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in Git etc
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Text, tab and indent related 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
" set smarttab

" 1 tab = 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=100

set ai "Auto indent
set si " Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Moving around 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move around split windows
nnoremap <C-J> <C-W><C-J> " move down
nnoremap <C-K> <C-W><C-K> " move up
nnoremap <C-L> <C-W><C-L> " move left
nnoremap <C-H> <C-W><C-H> " move right


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Status line 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline+=\ %*
set statusline+=\ ‹‹
set statusline+=\ %f\ %*
set statusline+=\ ››
set statusline+=\ %#keyword#\ %{ModeCurrent()}
set statusline+=%=
set statusline+=\ ‹‹
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ ››\ %*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Helper functions 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dictionary: take mode() input -> longer notation of current mode
" mode() is defined by Vim
let g:currentmode={ 'n' : 'Normal', 'no' : 'N·Operator Pending ', 'v' : 'Visual ', 'V' : 'V·Line ', '^V' : 'V·Block ', 's' : 'Select ', 'S': 'S·Line ', '^S' : 'S·Block ', 'i' : 'Insert ', 'R' : 'Replace ', 'Rv' : 'V·Replace ', 'c' : 'Command ', 'cv' : 'Vim Ex ', 'ce' : 'Ex ', 'r' : 'Prompt ', 'rm' : 'More ', 'r?' : 'Confirm ', '!' : 'Shell ', 't' : 'Terminal '}


" Function: return current mode
" abort -> function will abort soon as error detected
function! ModeCurrent() abort
    let l:modecurrent = mode()
    " use get() -> fails safely, since ^V doesn't seem to register
    " 3rd arg is used when return of mode() == 0, which is case with ^V
    " thus, ^V fails -> returns 0 -> replaced with 'V Block'
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE '
  endif
  return ''
endfunction

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Only show the concealed items when entering insert
augroup concealtoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set conceallevel=1
  autocmd BufLeave,FocusLost,InsertEnter * set conceallevel=0
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Helpful keybinds 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" move a line down by 1
nnoremap - ddp

" move a line up by 1
nnoremap _ ddP

" open vimrc in a split for a quick edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" reload vimrc while vim is open
nnoremap <leader>rv :source $MYVIMRC<cr>

" add double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" add single quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" toggle the hightlight
" nnoremap <leader>/ :set hls!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" spacegary configs
let g:spacegray_underline_search = 1
let g:spacegrap_itlicize_comments = 1

" vim-javascript
let g:javascript_plugin_flow = 1
let g:spacegray_plugin_jsdoc = 1

" lint using ale 
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1

" Concealment
" toggel the concealment
nnoremap <leader>c :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

" javascript concealment
let g:javascript_conceal_function = "λ"
let g:javascript_conceal_this = "@"
let g:javascript_conceal_return = "<"
let g:javascript_conceal_prototype = "#"
let g:javascript_conceal_null = "ø"
let g:javascript_conceal_undefined = "¿"
let g:javascript_conceal_NaN = "ℕ"
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_noarg_arrow_function = "⇒"

" Don't add the comment prefix when hitting enter || o/O on comment line
auto FileType * setlocal formatoptions-=r formatoptions-=o

" delimitMate
let g:delimitMate_expand_cr=2

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType  ='<C-n>'

" Better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger  = "<s-tab>"

" NERDTree
nnoremap <leader>n :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1
" Locate current file in NERDTree
nnoremap <leader>1 :NERDTreeFind<cr>

" open NERDTree automatically if on file was specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if only nerdtree
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTreeType') && b:NERDTreeType == "primary") | q | endif

" adds colour to whole file name and icon
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Nord colour scheme
let g:nord_italic = 1
let g:nord_italic_comments = 1

" Easymotion / incsearch
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> / incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ? incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" tmux navigation
let g:tmux_navigatior_save_on_switch = 2
