local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fo', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

require'telescope'.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-f>"] = require('telescope.actions').send_selected_to_qflist + require('telescope.actions').open_qflist
        }
      }
    }
  }
