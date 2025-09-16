-- require('ashen').setup({
--  transparent = true, -- Enable transparency
--
--  colors = {
--    orange_golden = "#7f5a60",
--    orange_glow = "#7f5a60",
--    orange_blaze = "#7f5a60",
--    orange_smolder = "#7f5a60",
--    red_ember = "#6a0e1e",
--    red_glowing = "#6a0e1e",
--    g_2 = "#9e0f20",
--    blue = "#7f5a60",
--    g_3 = "#7f5a60",
--    g_6 = "#5c5052"
--  },
--
--  style_presets = {
--    bold_functions = true,
--    italic_comments = true,
--  }
-- })
-- vim.cmd("colorscheme ashen")


-- LACKLUSTER COLORSCHEME
local lackluster = require("lackluster")

lackluster.setup({
    tweak_color = {
        -- lack = "#aaaa77",
        lack = "#39502F", 
        luster = "default",
        orange = "default",
        yellow = "default",
        green = "#668E4D",
        blue = "default",
        red = "default",
    },
    tweak_background = {
        normal = 'none',
        telescope = 'none',
        menu = lackluster.color.gray3,
        popup = 'default',
    },
        tweak_syntax = {
        string = "default",
        string_escape = "default",
        comment = "default",
        builtin = "default", -- builtin modules and functions
        type = "#668E4D",
        keyword = "default",
        keyword_return = "default",
        keyword_exception = "default",
    },
})

vim.cmd.colorscheme("lackluster")

-- vim.cmd.colorscheme("darkvoid")

