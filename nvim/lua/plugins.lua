return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- search
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}} }

end)
