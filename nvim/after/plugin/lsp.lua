local cmp      = require('cmp')
local luasnip  = require('luasnip')

require("luasnip.loaders.from_lua").lazy_load({
  paths = vim.fn.stdpath("config") .. "/snippets",
})

require('luasnip.loaders.from_vscode').lazy_load()   -- friendly-snippets

cmp.setup({
  snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>']     = cmp.mapping.confirm({ select = true }), -- accept best item
    ['<C-Space>'] = cmp.mapping.complete(),                 -- manual popup
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip'  },
  },
})

---------------------------------------------------------------------------
--  lsp-zero helpers
---------------------------------------------------------------------------
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

---------------------------------------------------------------------------
--  Mason + per-server config
---------------------------------------------------------------------------
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'pyright', 'gopls' },

  handlers = {
    -- default for every server
    function(server)
      require('lspconfig')[server].setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })
    end,

    -- fine-tune gopls
    ['gopls'] = function()
      require('lspconfig').gopls.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        settings = {
          gopls = {
            usePlaceholders        = true,
            completeFunctionCalls  = true,
            staticcheck            = true,
            gofumpt                = true,
            analyses               = { unusedparams = true },
          },
        },
      })
    end,

    ['clangd'] = function()
      require('lspconfig').clangd.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        cmd = {
          'clangd',
          '--background-index',
          '--clang-tidy',
          '--completion-style=detailed',
          '--header-insertion=never',
          '--fallback-style=llvm',
        },
      })
    end,
  },
})
