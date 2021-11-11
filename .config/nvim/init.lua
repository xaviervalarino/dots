local opt = vim.opt

opt.number = true
opt.termguicolors = true
opt.numberwidth =  5 -- make the line number gutter wider
opt.linebreak = true

-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2 opt.smartindent = true
opt.expandtab = true

-- window splits
opt.splitbelow = true
opt.splitright = true

vim.o.completeopt = 'menu,menuone,noselect'

-- Packages ----------------------------

require 'paq' {
  'savq/paq-nvim';
  'nvim-lua/plenary.nvim';   -- dependency of git signs & telescope
  'windwp/nvim-autopairs';
  'lewis6991/gitsigns.nvim';
  'tpope/vim-commentary';
  'tpope/vim-surround';
  'lukas-reineke/indent-blankline.nvim';
  { 'nvim-treesitter/nvim-treesitter', run=function() vim.cmd('TSUpdate') end};
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
}

vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_hide_inactive_statusline = true

-- Package Settings --------------------

require 'zen-mode'.setup {}
require 'nvim-autopairs'.setup {}
