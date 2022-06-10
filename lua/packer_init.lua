-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don"t error out on first use
local status_ok, packer = pcall(require, "packer")

if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- packer can manage itself

  -- Color schemes
  use "sjl/badwolf"
  use "Mofiqul/dracula.nvim"
  use "navarasu/onedark.nvim"
  use "tanvirtin/monokai.nvim"

  -- Treesitter interface
  use "nvim-treesitter/nvim-treesitter"

  -- Statusline
  use {
    "feline-nvim/feline.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  use {
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  use "mg979/vim-visual-multi"

  -- File Explorer
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icon
    }
  }

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = "v1.*", config = function()
    require("toggleterm").setup()
  end}

  -- Autopair
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- LSP
  use "neovim/nvim-lspconfig"

  -- Autocomplete
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      "saadparwaiz1/cmp_luasnip",
    },
  }

  -- Comments
  use {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end
  }

  -- git labels
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup()
    end
  }

  -- Icons
  use "kyazdani42/nvim-web-devicons"

   -- Dashboard (start screen)
  use {
    "goolord/alpha-nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
