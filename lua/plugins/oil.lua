return {
  {
    'stevearc/oil.nvim',
    dependencies = {
      'refractalize/oil-git-status.nvim',
    },
    config = function()
      require('oil').setup {
        win_options = {
          signcolumn = 'yes:2',
        },
      }
      require('oil-git-status').setup()
      vim.keymap.set('n', '-', '<cmd>Oil<CR>')
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 noet
