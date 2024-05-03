return {
  'tpope/vim-fugitive',
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local map = function(mode, keys, func, desc)
          vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = 'Gitsigns: ' .. desc })
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, 'Go to next hunk')
        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, 'Go to previous hunk')

        -- Actions
        map('n', '<leader>hs', gitsigns.stage_hunk, 'Stage hunk')
        map('n', '<leader>hr', gitsigns.reset_hunk, 'Reset hunk')
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, 'Stage hunk')
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, 'Reset hunk')
        map('n', '<leader>hS', gitsigns.stage_buffer, 'Stage buffer')
        map('n', '<leader>hu', gitsigns.undo_stage_hunk, 'Undo stage hunk')
        map('n', '<leader>hR', gitsigns.reset_buffer, 'Reset buffer')
        map('n', '<leader>hp', gitsigns.preview_hunk, 'Preview hunk')
        map('n', '<leader>hb', function()
          gitsigns.blame_line { full = true }
        end, 'Blame line')
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, 'Toggle current line blame')
        map('n', '<leader>hd', gitsigns.diffthis, 'Diffthis')
        map('n', '<leader>hD', function()
          gitsigns.diffthis '~'
        end, 'Diffthis')
        map('n', '<leader>td', gitsigns.toggle_deleted, '')

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', [["....... inside hunk" motion]])
      end,
    },
  },
}

-- vim: ts=2 sts=2 sw=2 noet
