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
vim.cmd("colorscheme sunbather")

-- run now and on future colorscheme changes
make_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "sunbather",
  callback = make_transparent,
})

vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#d75f87", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#d75f87", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#d75f87" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#ffff87", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { fg = "#ffff87", bold = true })

-- LACKLUSTER COLORSCHEME
-- local lackluster = require("lackluster")
--
-- lackluster.setup({
--     tweak_color = {
--         -- lack = "#aaaa77",
--         lack = "#39502F", 
--         luster = "default",
--         orange = "default",
--         yellow = "default",
--         green = "#668E4D",
--         blue = "default",
--         red = "default",
--     },
--     tweak_background = {
--         normal = 'none',
--         telescope = 'none',
--         menu = lackluster.color.gray3,
--         popup = 'default',
--     },
--         tweak_syntax = {
--         string = "default",
--         string_escape = "default",
--         comment = "default",
--         builtin = "default", -- builtin modules and functions
--         type = "#668E4D",
--         keyword = "default",
--         keyword_return = "default",
--         keyword_exception = "default",
--     },
-- })
--
-- vim.cmd.colorscheme("lackluster")
