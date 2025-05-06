-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                              , branch = '0.1.x',
	  dependencies = { 'nvim-lua/plenary.nvim' }
  }

  use "nvim-lua/plenary.nvim"
  
  use "0xstepit/flow.nvim"
  
  use('tpope/vim-fugitive')
  
  use('mbbill/undotree')
  
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) 
  
  use { 'luisiacc/gruvbox-baby' }
  
  use { 'sainnhe/gruvbox-material' }

  use "lervag/vimtex"
  
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
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
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

  use {
    'folke/noice.nvim',
    opt   = true,
    event = 'VimEnter',
    requires = {
      'MunifTanjim/nui.nvim',
      { 'rcarriga/nvim-notify', opt = true },
    },
    config = function()
      require('noice').setup({
        lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      })
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

