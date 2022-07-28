"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"always display the status line
set laststatus=2

" clear all autocommands! (this comment must be on its own line)
autocmd!

" Show (partial) command in status line.
set showcmd

"cross platform yank, paste
set clipboard^=unnamed,unnamedplus

"keep indention of clipboard paste
set paste

"show the matching part of the pair for [] {} and ()
set showmatch

"enable all Python syntax highlighting features
let python_highlight_all = 1

"color scheme
set t_Co=256

"true color support
set termguicolors

let $BAT_THEME='Nord' 

"showing all white spaces, tabs, etc
set list

"set netrw line numbers etc
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' 

"change tab characters to pipe
set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+

"open help with argument vertically positioned on the right
command! -nargs=1 H :vert bo help <args>

" remove holding shift to enter command mode
nmap ; :

" find tag file appropriate in path
set tags=tags;/

" disable swap files, I like to live life on the edge!
set nobackup
set nowritebackup
set noswapfile

" splits open to righ
set splitright
"Gvim Window options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif

"Navagating splits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"moves cursor down a split
nnoremap <C-Down> <C-W><C-J>
"moves cursor up a split
nnoremap <C-Up> <C-W><C-K>
"moves cursor right a split
nnoremap <C-Right> <C-W><C-L>
"moves cursor left a split
nnoremap <C-Left> <C-W><C-H>

"Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,n :bnext<cr>
nnoremap ,p :bprev<cr>

nnoremap ,b :ls<CR>:buffer<Space>

inoremap <c-n> <nop>
inoremap <c-p> <nop>

"LineNumbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set line numbers
set number

"Key remapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"exit terminal mode neovim
tnoremap <Esc> <C-\><t-n>

"Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"enables syntax coloring based on filetype
syntax on

"Indenting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"default backspace behavior
set backspace=indent,eol,start

"enables loading of indent file for specific file types
filetype plugin indent on

"when indenting with '>>', use 4 spaces width
set shiftwidth=4

" use 4 spaces for generic files
set tabstop=4

"on pressing tab, insert 4 spaces
set expandtab

" use 2 space width when sbt
autocmd Filetype sbt setlocal tabstop=2
" use 2 space width when sbt
autocmd Filetype sbt setlocal shiftwidth=2

" use 2 space width when scala
autocmd Filetype scala setlocal tabstop=2
" use 2 space width when scala
autocmd Filetype scala setlocal shiftwidth=2


"Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"enables code folding by defined commands (zf)* 
setlocal foldmethod=manual

"Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlights all search matches
set hlsearch

"changes search highlighting to lightblue
hi Search guibg=LightBlue

"Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"FZF searching support
set rtp+=/usr/local/opt/fzf
nnoremap ,f :FZF<CR>
" Bind T to open History Search
nnoremap ,h :History:<CR>
" Bind T to open fzf tags search
nnoremap ,t :Tags<CR>
nnoremap ,b :Buffers<CR>
nnoremap ,r :Rg<CR>
nnoremap ,a :Ag<CR>


"Environment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"no gui 

if has('gui_running')
    "expand gvim window
    set lines=999 columns =999

    "highlight current line
    set cul

    "adjust color
    hi CursorLine term=none cterm=none ctermbg=3
endif

"Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" - so % and run `:PlugInstall` to install
"call plug#begin('~/.config/nvim/plugged')
call plug#begin()

    Plug 'Shougo/deoplete.nvim'

    Plug 'godlygeek/tabular'

    Plug 'preservim/vim-markdown'

    Plug 'iamcco/markdown-preview.nvim'

    Plug 'itchyny/lightline.vim'

    Plug 'vim-syntastic/syntastic'

    Plug 'airblade/vim-gitgutter'

    Plug 'jlanzarotta/bufexplorer'

    Plug 'Lenovsky/nuake'

    Plug 'janko-m/vim-test'

    Plug 'vim-python/python-syntax'

    Plug 'folke/which-key.nvim'

    " Git support
    Plug 'tpope/vim-fugitive'

    Plug 'tpope/vim-surround'

    Plug 'tpope/vim-unimpaired'

    Plug 'fatih/vim-go'

    Plug 'rust-lang/rust.vim'

    Plug 'xolox/vim-misc'

    Plug 'mileszs/ack.vim'

    Plug 'francoiscabrol/ranger.vim'

    Plug 'rbgrouleff/bclose.vim'

    Plug 'derekwyatt/vim-scala'

    Plug 'easymotion/vim-easymotion'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'christoomey/vim-tmux-navigator'

    " Plug 'ctrlpvim/ctrlp.vim'

    Plug 'nvim-lua/plenary.nvim'

    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    Plug 'preservim/tagbar'

    Plug 'junegunn/fzf.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'shaunsingh/nord.nvim'

    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'tpope/vim-commentary'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lewis6991/gitsigns.nvim'

    Plug 'soywod/himalaya', {'rtp': 'vim'}
call plug#end()

" Nuake
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>
let g:nuake_position = 'top'
let g:nuake_size = '1'

nmap <F8> :TagbarToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

colorscheme nord
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_nord'

let g:himalaya_mailbox_picker = 'fzf'
nnoremap gh :Himalaya<CR>

lua << EOF
require'nvim-treesitter.configs'.setup {

  -- A list of parser names, or "all"
  ensure_installed = { "go"},

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

lua << EOF
require('gitsigns').setup()
EOF

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" edit config file
command! E edit $MYVIMRC
