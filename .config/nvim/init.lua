local set = vim.opt
local global = vim.g
local window = vim.wo
local cmd = vim.cmd

set.number = true
set.termguicolors = true
set.linebreak = true

set.mouse = 'a'

set.breakindent = true
set.relativenumber = true
set.number = true

-- Show partial off-screen results in preview window for :substitute
set.inccommand = 'split'

-- leave buffers open in the background
set.hidden = true

-- leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- global.noerrorbells = true

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
  { 'windwp/nvim-autopairs', run = function() require 'nvim-autopairs'.setup {} end };
  'lewis6991/gitsigns.nvim';
  'tpope/vim-surround';
  'lukas-reineke/indent-blankline.nvim';
  { 'nvim-treesitter/nvim-treesitter', run = function() cmd('TSUpdate') end };
  'nvim-treesitter/playground';
  'windwp/nvim-ts-autotag';
  'nvim-telescope/telescope.nvim';
  'neovim/nvim-lspconfig';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-vsnip';
  'onsails/lspkind-nvim';
  'hrsh7th/vim-vsnip';
  'kyazdani42/nvim-web-devicons';
  'folke/tokyonight.nvim';
  { 'folke/zen-mode.nvim', run = function() require'zenmode'.setup {} end };
  'rafamadriz/friendly-snippets';
  'ThePrimeagen/harpoon';
  { 'folke/which-key.nvim', run = function() require'which-key'.setup {} end };
  { 'numToStr/Comment.nvim', run = function() require'Comment'.setup {} end };
}


-- Package Config --------------------

require 'rc.completion'
require 'rc.colorscheme'
require 'rc.git-signs'
require 'rc.indent-blankline'
require 'rc.language-server'
