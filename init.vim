"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"█║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    

"---------------------------------vim config----------------------------
syntax on
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
"Get out of insert mode 
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

" ----------- vim-syntastic ---------
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_python_checkers = ['flake8', 'pylint']

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

"-------------------------------Plugins-------------------------------
"Plugins
call plug#begin('~/.vim/plugged')
" Temas
" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sheerun/vim-polyglot'
" "IDE
Plug 'easymotion/vim-easymotion'
 "Nerdtree
Plug 'preservim/nerdtree'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Stable version of coc
Plug 'neoclide/coc.nvim',{'branch':'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"Estado de los archivos
Plug 'xuyuanp/nerdtree-git-plugin'
"Eunuch
Plug 'tpope/vim-eunuch'
"MarkDown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'  }
"Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript'  }
"Html
Plug 'othree/html5.vim', { 'for': 'html'  }
"Css
Plug 'hail2u/vim-css3-syntax', { 'for': 'css'  }
"Emmet
Plug 'mattn/emmet-vim'

"Plugins Utiles del Usuario
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary', {'for': ['sh', 'python', 'markdown']}
Plug 'ironcamel/vim-script-runner', {'for': ['sh', 'python']}
Plug 'honza/vim-snippets', {'for': ['sh', 'python', 'markdown']}

Plug 'godlygeek/tabular'  
Plug 'dracula/dracula-theme' 
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'


call plug#end()

source $HOME/AppData/Local/nvim/plugins/plug-config.vim
source $HOME/AppData/Local/nvim/plugins/coc-config.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>


"abrir Nerdtree
"open nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--gruvbox config--
colorscheme gruvbox
let g:gruvbox_contrast_dark = "medium"
highlight Normal ctermbg=234
set laststatus=2
set noshowmode


"LightLine Config
let g:lightline = {'colorscheme':'gruvbox'}
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"Sqlconfig
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \}
"-----------------------------------------------------------------


