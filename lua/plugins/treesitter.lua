return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
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
