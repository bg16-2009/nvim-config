return {
  -- TODO: Add glow.nvim 
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    config = function()
      vim.g.mkdp_auto_close = 0
      vim.keymap.set('n', '<leader>mp', '<Cmd>MarkdownPreviewToggle<CR>')
    end,
  },
  { -- TODO: Add keymaps and autocmds that use mkdnflow
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup {
        mappings = {
          MkdnIncreaseHeading = { 'n', '<leader>+' },
          MkdnDecreaseHeading = { 'n', '<leader>-' },
        },
        perspective = {
          priority = 'root',
          fallback = 'current',
          root_tell = '.wiki_root',
        },
      }
    end,
  },
  { -- TODO: Change keymaps so they don't overlap with my own (Example: <leader>tt overlaps with TransparentToggle)
    'dhruvasagar/vim-table-mode',
    config = function()
      vim.g.table_mode_syntax = 0
      vim.g.table_mode_corner = '|'
			vim.keymap.set("n", "<leader>tm", "<cmd>TableModeToggle<cr>")
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 noet
