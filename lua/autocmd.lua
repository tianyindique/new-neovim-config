-- let the width of neo-tree change with the width of window, always be 20% of window width
vim.api.nvim_create_autocmd('VimResized', {
  callback = function()
    require('neo-tree.command').execute { action = 'close' }
    require('neo-tree.command').execute { action = 'show', soure = 'filesystem', reveal = true }
  end,
})
