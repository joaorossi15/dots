vim.g.mapleader = " "
--vim.g.gruvbox_material_transparent_background = 0
--vim.cmd[[colorscheme oh-lucy-evening]]
local function TOGGLE_T(v)
  vim.g.gruvbox_material_transparent_background = v
  vim.cmd('colorscheme gruvbox-material')
end

--vim.keymap.set('n', '<leader>bf', function()
  --TOGGLE_T(0)
--end)

--vim.keymap.set('n', '<leader>bt', function()
  --TOGGLE_T(1)
--end)

--vim.keymap.set('n', '<leader>bn', function()
 -- TOGGLE_T(2)
--end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('', '<leader>sp', ':120  vsplit<Return><C-w>w:term<Return>:se wfh<Return>') 
