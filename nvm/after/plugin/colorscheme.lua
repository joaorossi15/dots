--vim.cmd("colorscheme gruvbox-baby")
--vim.g.gruvbox_material_transparent_background = 2
--vim.cmd("colorscheme gruvbox-material")
--vim.gruvbox_material_background = 'light'

-- vim.cmd("colorscheme rose-pine")

require('ashen').setup({
  transparent = true, -- Enable transparency

  colors = {
    orange_golden = "#7f5a60",
    orange_glow = "#7f5a60",
    orange_blaze = "#7f5a60",
    orange_smolder = "#7f5a60",
    red_ember = "#6a0e1e",
    red_glowing = "#6a0e1e",
    g_2 = "#9e0f20",
    blue = "#7f5a60",
    g_3 = "#7f5a60",
    g_6 = "#5c5052"
  },

  style_presets = {
    bold_functions = true,
    italic_comments = true,
  }
})
vim.cmd("colorscheme ashen")

--vim.cmd("colorscheme heatherfield")

