local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Select all
map('n', '<C-a>', 'gg<S-v>G', opts)

-- Split windows
map('n', 'vs', ':vs<CR>', opts)
map('n', 'sp', ':sp<CR>', opts)

-- Delete a word backwards
map('n', 'dw', 'vb"_d', opts)

-- New tab
map('n', 'te', ':tabedit<CR>', opts)

-- Move window
map('n', '<Space>', '<C-w>w', opts)
map('', '<C-H>', '<C-w>h', opts)
map('', '<C-K>', '<C-w>k', opts)
map('', '<C-J>', '<C-w>j', opts)
map('', '<C-L>', '<C-w>l', opts)

-- Resize windows
map('n', '<C-N>', ':Lexplore<CR> :vertical resize 30<CR>', opts)

-- Open term
map('n', '<leader>t', ':sp<CR> :term<CR> :resize 20N<CR> i', opts)

map('t', '<Esc>', '<C-\\><C-n>', opts)

-- Align
map('v', '<leader>al', ":SimpleAlign \\S\\+ -lpadding 0<CR>", opts)

-- Move code block
map('n', '<A-j>', ":MoveLine(1)<CR>", opts)
map('n', '<A-k>', ":MoveLine(-1)<CR>", opts)
map('v', '<A-j>', ":MoveBlock(1)<CR>", opts)
map('v', '<A-k>', ":MoveBlock(-1)<CR>", opts)
map('n', '<A-l>', ":MoveHChar(1)<CR>", opts)
map('n', '<A-h>', ":MoveHChar(-1)<CR>", opts)
map('v', '<A-l>', ":MoveHBlock(1)<CR>", opts)
map('v', '<A-h>', ":MoveHBlock(-1)<CR>", opts)

-- Delete current buffer
map('n', '<leader>bd', "<cmd>lua require('bufdelete').bufdelete(0, true)<CR>", opts)

-- open or close nvim-tree
map('n', '<A-e>', ":NvimTreeToggle<CR>", opts)

-- open neogit
map('n', '<A-g>', ":Neogit<CR>", opts)
