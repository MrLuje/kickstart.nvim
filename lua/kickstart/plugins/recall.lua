return {
  'fnune/recall.nvim',
  version = '*',
  config = function()
    local recall = require 'recall'

    recall.setup {}

    vim.keymap.set('n', '<C-k><C-k>', recall.toggle, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-k><C-n>', recall.goto_next, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-k><C-p>', recall.goto_prev, { noremap = true, silent = true })
    -- vim.keymap.set('n', '<leader>mc', recall.clear, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>sm', ':Telescope recall<CR>', { desc = '[S]earch [M]arks', noremap = true, silent = true })
  end,
}
