vim.g.mapleader = " "
local map  = vim.keymap.set
local n,i,v,t = 'n','i','v','t'               -- mode shorthands
local O    = {noremap = true, silent = true}

local function TOGGLE_T(v)
  vim.g.gruvbox_material_transparent_background = v
  vim.cmd('colorscheme gruvbox-material')
end


map('', '<leader>sp', ':120  vsplit<Return><C-w>w:term<Return>:se wfh<Return>') 
map(n, '<Esc>', '<cmd>nohlsearch<cr>',   O)   -- clear highlight


map({'n','v'}, '<A-j>', ':m+1<cr>==',     O)  -- move line/selection down
map({'n','v'}, '<A-k>', ':m-2<cr>==',     O)  -- move line/selection up


map({n,t}, '<C-h>', '<C-\\><C-N><C-w>h', O)   -- move between splits with Ctrl+h/j/k/l
map({n,t}, '<C-j>', '<C-\\><C-N><C-w>j', O)
map({n,t}, '<C-k>', '<C-\\><C-N><C-w>k', O)
map({n,t}, '<C-l>', '<C-\\><C-N><C-w>l', O)


-- delete above / below (normal mode)
map('n', '<leader>du', ':-1d<CR>', O)  -- delete line above
map('n', '<leader>dd', ':+1d<CR>', O)  -- delete line below

-- copy (yank) above / below (normal + visual; exits visual first)
map('n', '<leader>cu', '<Esc>:-1y<CR>', O)  -- copy line above
map('n', '<leader>cd', '<Esc>:+1y<CR>', O)  -- copy line below

