local fn = vim.fn
local install_path = fn.stdpath('data').. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ({
    'rose-pine/neovim', 
    as = 'rose-pine', 
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use ({
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate', 
    config = "require('user.treesitter-config')"
  })
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs', config = "require('user.autopairs-config')"}
  use {'folke/which-key.nvim', config = "require('user.whichkey-config')"}
  use {'nvim-telescope/telescope.nvim', requires = "nvim-lua/plenary.nvim", config = "require('user.telescope-config')"}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, config = "require('user.lualine-config')"}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config = "require('user.bufferline-config')" }
  use ({
    'kyazdani42/nvim-tree.lua', 
    requires = 'kyazdani42/nvim-web-devicons', 
    config = "require('user.nvimtree-config')"
  })
  use {'neovim/nvim-lspconfig', config = "require('user.lsp')"}
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
