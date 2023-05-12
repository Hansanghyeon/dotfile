return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- search
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }

  -- testing
  -- javascript
  -- elixir
end)
