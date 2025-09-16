vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                              , branch = '0.1.x',
	  dependencies = { 'nvim-lua/plenary.nvim' }
  }

  use "nvim-lua/plenary.nvim"

  use { "rose-pine/neovim" }

  use "paulfrische/reddish.nvim"

  use { "ficcdaf/ashen.nvim" }

  use { 'aliqyan-21/darkvoid.nvim' }
  
  use { 'numToStr/Comment.nvim' }

  use('tpope/vim-fugitive')
  
  use('mbbill/undotree')
  
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) 
  
  use { "j-hui/fidget.nvim" }

  use { 'egerhether/heatherfield.nvim' }

  use { "slugbyte/lackluster.nvim" }

  use { "MagicDuck/grug-far.nvim" }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })
      
  use{
    "jose-elias-alvarez/null-ls.nvim", 
    ft = "go",
    requires = {
        opts = function()
            return require "nullls"
        end
    }
  }

  use {'goolord/alpha-nvim'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP stack
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',

      -- Completion engine + LSP source
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',

      -- Snippet engine + bridges
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Big community snippet collection (contains the “iferr” snippet)
      'rafamadriz/friendly-snippets',
    },
  }

  use {
	'nvim-tree/nvim-tree.lua',
	'nvim-tree/nvim-web-devicons'
  }

  use {
    'iamcco/markdown-preview.nvim',
    opt = true,                                -- lazy‑load
    ft  = { 'markdown' },                      -- load on Markdown files
    cmd = { 'MarkdownPreviewToggle',
            'MarkdownPreview',
            'MarkdownPreviewStop' },          -- or when you call these commands
    run = function()                           -- build step
      vim.fn['mkdp#util#install']()
    end,
    config = function()
      -- any additional configuration you like, e.g.:
      vim.g.mkdp_auto_start = 0                -- don’t auto‑open preview on load
      vim.g.mkdp_browser = 'firefox'           -- choose your browser
    end,
  }

  use({
    'MeanderingProgrammer/markdown.nvim',
    as = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    config = function()
        require('render-markdown').setup({})
    end,
})

end)
