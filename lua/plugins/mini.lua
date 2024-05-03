return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.comment').setup()
    require('mini.pairs').setup()
    require('mini.statusline').setup()
  end,
}

-- vim: ts=2 sts=2 sw=2 noet
