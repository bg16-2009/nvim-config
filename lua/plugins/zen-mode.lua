return {
  'pocco81/true-zen.nvim',
  opts = {
    minimalist = {
      options = { -- options to be disabled when entering Minimalist mode
        number = false,
        relativenumber = false,
        showtabline = 1,
        signcolumn = 'no',
        statusline = '',
        cmdheight = 0,
        laststatus = 0,
        showcmd = false,
        showmode = false,
        ruler = false,
        numberwidth = 1,
      },
    },
    integrations = {
      tmux = true,
    },
  },
  keys = {
    {
      '<leader>zn',
      '<cmd>TZNarrow<cr>',
      mode = 'n',
      desc = 'Narrow focused',
      noremap = true,
    },
    {
      '<leader>zn',
      "<cmd>'<,'>TZNarrow<cr>",
      mode = 'v',
      desc = 'Ranged narrow focused',
      noremap = true,
    },
    {
      '<leader>zf',
      '<cmd>TZFocus<cr>',
      mode = 'n',
      desc = 'Focued mode',
      noremap = true,
    },
    {
      '<leader>zm',
      '<cmd>TZMinimalist<cr>',
      mode = 'n',
      desc = 'Minimalist mode',
      noremap = true,
    },
    {
      '<leader>za',
      '<cmd>TZAtaraxis<cr>',
      mode = 'n',
      desc = 'Ataraxis mode',
      noremap = true,
    },
  },
}

-- vim: ts=2 sts=2 sw=2 noet
