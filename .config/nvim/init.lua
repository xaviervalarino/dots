local set = vim.opt
local global = vim.g
local window = vim.wo
local cmd = vim.cmd

set.number = true
set.termguicolors = true
-- set.numberwidth =  5 -- make the line number gutter wider
set.linebreak = true

set.mouse = 'a'

set.breakindent = true
set.relativenumber = true
set.number = true


-- leave buffers open in the background
set.hidden = true

-- global.noerrorbells = true
-- set.nowrap = true

set.ignorecase = true
set.smartcase = true

-- turn off swap and turn on undo history
set.swapfile = false
set.undofile = true

set.incsearch = true
set.ignorecase = true
set.smartcase = true

window.signcolumn = 'yes'

-- tabs
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.smartindent = true
set.expandtab = true

-- window splits
set.splitbelow = true
set.splitright = true

global.completeopt = 'menu,menuone,noselect'

-- Packages ----------------------------

require 'paq' {
  'savq/paq-nvim';
  'nvim-lua/plenary.nvim';   -- dependency of git signs & telescope
  'windwp/nvim-autopairs';
  'lewis6991/gitsigns.nvim';
  'tpope/vim-commentary';
  'tpope/vim-surround';
  'lukas-reineke/indent-blankline.nvim';
  { 'nvim-treesitter/nvim-treesitter', run=function() cmd('TSUpdate') end};
  'nvim-treesitter/playground';
  'windwp/nvim-ts-autotag';
  'nvim-telescope/telescope.nvim';
  'neovim/nvim-lspconfig';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';
  'onsails/lspkind-nvim';
  'hrsh7th/cmp-vsnip';
  'hrsh7th/vim-vsnip';
  'kyazdani42/nvim-web-devicons';
  'folke/tokyonight.nvim';
  'folke/zen-mode.nvim';
  'rafamadriz/friendly-snippets';
}

vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_hide_inactive_statusline = true

-- Package Settings --------------------

require 'zen-mode'.setup {}
require 'nvim-autopairs'.setup {}
