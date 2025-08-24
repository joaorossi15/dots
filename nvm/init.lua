require("biel.packer")
require("biel.remap")
require("biel.set")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
        view = {
            width = 30,
    },
        filters = {
        dotfiles = true,
    },
})

require'alpha'.setup(require'alpha.themes.dashboard'.config)


vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- or ">>", or ""
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
