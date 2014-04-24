nmapclear

"It allows the change in this file automatically being loaded after each update
""autocmd! bufwritepost .vimrc source %
set showcmd
set number
set tw=80   "width of document
set nowrap  "don't automatically wrap on load
set fo-=t   "don't automatically wrap when typing
set colorcolumn=81
highlight ColorColumn ctermbg=235
set ruler
set cursorline
set cursorcolumn
set hlsearch
nnoremap <F3> : noh <CR>

"Set tab as 4 spaces, set indentation as 4 spaces, then turn on expandtab motion
set tabstop=4
set shiftwidth=4
set expandtab
syntax on 
filetype indent plugin on

"shortcut for saving a file
nnoremap <C-a> :update<CR>

"bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l

"better indentation
vnoremap < <gv 
vnoremap > >gv 

"map sort function key
vnoremap <Leader>s :sort<CR>

" easier formatting of paragraphs
""vmap Q gq
""nmap Q gqap

"Set history
set history=2700
set undolevels=150

"Set colorscheme 
set t_Co=256
colorscheme wombat256mod 
set background=dark

"No autobackups
""set nobackup
""set nowritebackup
""set noswapfile

"Setup Pathogen to manage my plugins
"Copy pathogen.vim into ~/.vim/autoload/  then I can install any plugin into
"~/.vim/bundle/plugin-name/ folder
call pathogen#infect()

"========================================================
"Python IDE Setup
"========================================================

"Setting for vim-powerline
set laststatus=2

"Setting for ctrip
"copy everything to ~/.vim/bundle/
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
" let g:jedi#related_names_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
""set completeopt=longest,menuone
""function! OmniPopup(action)
""    if pumvisible()
""        if a:action == 'j'
""            return "\<C-N>"
""        elseif a:action == 'k'
""            return "\<C-P>"
""        endif
""    endif
""    return a:action
""endfunction

""inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
""inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable


