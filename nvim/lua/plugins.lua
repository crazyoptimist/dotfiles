-- Automatically install and set up packer.nvim, a plugin manager
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'ojroques/nvim-hardline'
  use 'nvim-treesitter/nvim-treesitter'
  use 'm4xshen/autoclose.nvim'

  -- Auto Completion
  use { 'neoclide/coc.nvim', branch='release' }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
