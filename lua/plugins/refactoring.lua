return {
  'ThePrimeagen/refactoring.nvim',
	enabled = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('refactoring').setup()
    require('telescope').load_extension 'refactoring'
    vim.keymap.set({ 'n', 'v' }, '<leader>rr', function()
      require('telescope').extensions.refactoring.refactors()
    end)
    vim.keymap.set('v', '<leader>re', function()
      require('refactoring').refactor 'Extract Function'
    end)
    vim.keymap.set('v', '<leader>rf', function()
      require('refactoring').refactor 'Extract Function To File'
    end)
    vim.keymap.set('v', '<leader>rv', function()
      require('refactoring').refactor 'Extract Variable'
    end)
    vim.keymap.set('v', '<leader>ri', function()
      require('refactoring').refactor 'Inline Variable'
    end)
  end,
}

-- vim: ts=2 sts=2 sw=2 noet
