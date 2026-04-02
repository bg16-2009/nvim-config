return {
  'nvim-treesitter/nvim-treesitter',
	dependencies = {
		-- "nvim-treesitter/playground",
	},
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'vim',
        'vimdoc',
      },
      auto_install = false,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

-- vim: ts=2 sts=2 sw=2 noet
