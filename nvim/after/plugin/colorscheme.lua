

local function make_transparent()
  for _, grp in ipairs({
    "Normal","NormalNC","NormalFloat","FloatBorder",
    "SignColumn","EndOfBuffer","LineNr","FoldColumn",
    "CursorLine","CursorLineNr"
  }) do
    vim.api.nvim_set_hl(0, grp, { bg = "none" })
  end
end

-- vim.cmd("colorscheme sakura")
-- vim.cmd("colorscheme sunbather")
-- vim.cmd("colorscheme noctis")
-- vim.cmd("colorscheme colibri")
vim.cmd("colorscheme paramount")

make_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "paramount",
  callback = make_transparent,
})
--
-- vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#d75f87", bold = true })
-- vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#d75f87", bold = true })
-- vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#d75f87" })
-- vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#ffff87", bold = true })
-- vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { fg = "#ffff87", bold = true })

