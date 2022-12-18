local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }

  map('n', 'vs', ':vs<CR>', opts)
  map('n', 'sp', ':sp<CR>', opts)
  map('n', '<C-L>', '<C-W><C-L>', opts)
  map('n', '<C-H>', '<C-W><C-H>', opts)
  map('n', '<C-K>', '<C-W><C-K>', opts)
  map('n', '<C-J>', '<C-W><C-J>', opts)
  map('n', '<C-S>', ':%s/', opts)
  map('n', '<C-N>', ':Lexplore<CR> :vertical resize 30<CR>', opts)
  map('n', '<leader>t', ':sp<CR> :term<CR> :resize 20N<CR> i', opts)
  map('t', '<Esc>', '<C-\\><C-n>', opts)
  map('v', '<leader>al', ":SimpleAlign \\S\\+ -lpadding 0<CR>", opts)

  -- Move
  map('n', '<A-j>', ":MoveLine(1)<CR>", opts)
  map('n', '<A-k>', ":MoveLine(-1)<CR>", opts)
  map('v', '<A-j>', ":MoveBlock(1)<CR>", opts)
  map('v', '<A-k>', ":MoveBlock(-1)<CR>", opts)
  map('n', '<A-l>', ":MoveHChar(1)<CR>", opts)
  map('n', '<A-h>', ":MoveHChar(-1)<CR>", opts)
  map('v', '<A-l>', ":MoveHBlock(1)<CR>", opts)
  map('v', '<A-h>', ":MoveHBlock(-1)<CR>", opts)

  -- buffer_manager
  map('n', '<A-m>', "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<CR>", opts)
  map('n', '<A-,>', "<cmd>lua require('buffer_manager.ui').nav_prev()<CR>", opts)
  map('n', '<A-.>', "<cmd>lua require('buffer_manager.ui').nav_next()<CR>", opts)
