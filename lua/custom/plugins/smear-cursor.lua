-- smear-cursor.nvim: animated cursor trail
-- https://github.com/sphamba/smear-cursor.nvim

vim.pack.add { 'https://github.com/sphamba/smear-cursor.nvim' }

require('smear_cursor').setup {
  enabled = true,
  smear_between_buffers = false,
  stiffness = 0.9,
  trailing_stiffness = 0.8,
  distance_stop_animating = 0.3,
}
