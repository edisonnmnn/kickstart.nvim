-- Personal keymaps, loaded from init.lua after the kickstart defaults.
-- NOTE: `vim.g.mapleader` is already set in init.lua (before plugins load), so it
-- is intentionally not repeated here.

vim.keymap.set('n', '<leader>S', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace word cursor is on' })

vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result cursor centered' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result cursor centered' })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'move up in buffer with cursor centered' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'move down in buffer with cursor centered' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines without moving cursor' })

vim.keymap.set('x', '>', '>gv', { desc = 'Indent and keep selection' })
vim.keymap.set('x', '<', '<gv', { desc = 'Unindent and keep selection' })

vim.keymap.set('x', 'K', ":m '<-2<CR>gv=gv", { desc = 'moves lines up in visual selection' })
vim.keymap.set('x', 'J', ":m '>+1<CR>gv=gv", { desc = 'moves lines down in visual selection' })

vim.keymap.set('n', '<C-c>', ':nohl<CR>', { desc = 'Clear search highlighting', silent = true })
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Delete text without saving it to any register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without yanking' })

-- replaces selected text WITHOUT losing what you yanked
vim.keymap.set('x', 'p', [["_dP]], { desc = 'Paste over selection without losing yanked text' })

vim.keymap.set('n', '<leader>X', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'makes file executable' })

vim.keymap.set('n', '<leader>re', '<cmd>restart<cr>', { desc = 'Restart Neovim (:restart)' })

-- native undotree
vim.keymap.set('n', '<leader>u', function()
  vim.cmd.packadd 'nvim.undotree'
  require('undotree').open()
end, { desc = 'Toggle Builtin Undotree' })

-- TODO comments
-- Highlighting is set up in init.lua; these add navigation and project-wide search.
-- NOTE: `]t`/`[t` and `]T`/`[T` are taken by the builtin tag motions, hence `]x`/`[x`.
vim.keymap.set('n', ']x', function() require('todo-comments').jump_next() end, { desc = 'Next TODO comment' })
vim.keymap.set('n', '[x', function() require('todo-comments').jump_prev() end, { desc = 'Previous TODO comment' })
vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<CR>', { desc = '[S]earch [T]ODO comments' })
