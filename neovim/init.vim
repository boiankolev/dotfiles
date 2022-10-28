""General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"always display the status line
set laststatus=2

"" Show (partial) command in status line.
set showcmd

""cross platform yank, paste
set clipboard^=unnamed,unnamedplus

""show the matching part of the pair for [] {} and ()
set showmatch

""enable all Python syntax highlighting features
let python_highlight_all = 1

"color scheme
set t_Co=256

"true color support
set termguicolors

let $BAT_THEME='Nord'

"showing all white spaces, tabs, etc
set list

"change tab characters to pipe
set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+

"open help with argument vertically positioned on the right
command! -nargs=1 H :vert bo help <args>

" remove holding shift to enter command mode
nmap ; :

" find tag file appropriate in path
set tags=tags;/

"" disable swap files, I like to live life on the edge!
set nobackup
set nowritebackup
set noswapfile

"" splits open to righ
set splitright

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

""Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,n :bnext<cr>
nnoremap ,p :bprev<cr>

nnoremap ,b :ls<CR>:buffer<Space>

"LineNumbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set line numbers
set number

"Key remapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" filetype plugin indent on

"when indenting with '>>', use 4 spaces width
set shiftwidth=4

" use 4 spaces for generic files
set tabstop=4

"on pressing tab, insert 4 spaces
set expandtab

"" use 2 space width when sbt
autocmd Filetype sbt setlocal tabstop=2
" use 2 space width when sbt
autocmd Filetype sbt setlocal shiftwidth=2

" use 2 space width when scala
autocmd Filetype scala setlocal tabstop=2
" use 2 space width when scala
autocmd Filetype scala setlocal shiftwidth=2

" use 2 space width when .vim
autocmd Filetype scala setlocal tabstop=2
" use 2 space width when .vim
autocmd Filetype scala setlocal shiftwidth=2

""Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""enables code folding by defined commands (zf)* 
setlocal foldmethod=manual

""Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" map <Leader>+F to search in ag the word under the cursor
map <Leader>f :call fzf#vim#ag(expand('<cword>'))<kEnter>

""Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" - so % and run `:PlugInstall` to install
"call plug#begin('~/.config/nvim/plugged')
"telescope
call plug#begin()
    Plug 'lewis6991/impatient.nvim'
	Plug 'godlygeek/tabular'
	Plug 'preservim/vim-markdown'
	Plug 'itchyny/lightline.vim'
	Plug 'vim-syntastic/syntastic'
	Plug 'folke/which-key.nvim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-unimpaired'
	Plug 'fatih/vim-go'
	Plug 'rust-lang/rust.vim'
	Plug 'xolox/vim-misc'
	Plug 'mileszs/ack.vim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'easymotion/vim-easymotion'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'preservim/tagbar'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'arcticicestudio/nord-vim'
	Plug 'shaunsingh/nord.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'tpope/vim-commentary'
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
    Plug 'onsails/lspkind.nvim'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/vim-vsnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'neovim/nvim-lspconfig'
    Plug 'mhinz/vim-startify'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
call plug#end()

lua require('impatient')

set completeopt=menu,menuone,noselect

nmap <F8> :TagbarToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component_function': {
      \   'filename': 'FilenameForLightline'
      \ }
      \ }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction

colorscheme nord

let g:vim_markdown_conceal_code_blocks = 1

lua << EOF
require'nvim-treesitter.configs'.setup {

  -- A list of parser names, or "all"
  ensure_installed = {"go", "python", "rust", "lua"},

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

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

"" edit config file
command! E edit $MYVIMRC

lua << EOF
require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    direction = 'float',
    start_in_insert = false,
    float_opts = {
        border = 'curved',
        -- like `size`, width and height can be a number or function which is passed the current terminal
        winblend = 3,
    },
}
EOF

lua << EOF
-- empty setup using defaults
 require("nvim-tree").setup()
EOF

" Setup global configuration. More on configuration below.
lua << EOF
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require "cmp"
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local WIDE_HEIGHT = 60
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = {
      format = lspkind.cmp_format({
        mode = "symbol_text",
        menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[Latex]",
        })
      }),
  },
  window = {
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i','c'}),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i','c'}),
    ['<C-o>'] = cmp.mapping.complete(),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
   { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
}
EOF

lua << EOF
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF

lua << EOF
cfg = {
  debug = false, -- set to true to enable debug logging
  log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log", -- log dir when debug is on
  -- default is  ~/.cache/nvim/lsp_signature.log
  verbose = false, -- show debug line number

  bind = true, -- This is mandatory, otherwise border config won't get registered.
               -- If you want to hook lspsaga or other signature handler, pls set to false
  doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                 -- set to 0 if you DO NOT want any API comments be shown
                 -- This setting only take effect in insert mode, it does not affect signature help in normal
                 -- mode, 10 by default

  max_height = 12, -- max height of signature floating_window
  max_width = 80, -- max_width of signature floating_window
  wrap = true, -- allow doc/signature text wrap inside floating_window, useful if your lsp return doc/sig is too long
  
  floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

  floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
  -- will set to true when fully tested, set to false will use whichever side has more space
  -- this setting will be helpful if you do not want the PUM and floating win overlap

  floating_window_off_x = 1, -- adjust float windows x position.
  floating_window_off_y = 0, -- adjust float windows y position. e.g -2 move window up 2 lines; 2 move down 2 lines

  close_timeout = 4000, -- close floating window after ms when laster parameter is entered
  fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
  hint_enable = true, -- virtual hint enable
  hint_prefix = "🐼 ",  -- Panda for parameter, NOTE: for the terminal not support emoji, might crash
  hint_scheme = "String",
  hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
  handler_opts = {
    border = "rounded"   -- double, rounded, single, shadow, none
  },

  always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

  auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
  extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
  zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

  padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc

  transparency = nil, -- disabled by default, allow floating win transparent value 1~100
  shadow_blend = 36, -- if you using shadow as border use this set the opacity
  shadow_guibg = 'Black', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
  timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
  toggle_key = nil, -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'

  select_signature_key = nil, -- cycle to next signature, e.g. '<M-n>' function overloading
  move_cursor_key = nil, -- imap, use nvim_set_current_win to move cursor between current win and floating
}

-- recommended:
require'lsp_signature'.setup(cfg) -- no need to specify bufnr if you don't use toggle_key
require("lsp_signature").status_line(max_width)
EOF
