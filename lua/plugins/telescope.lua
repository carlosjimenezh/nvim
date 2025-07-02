return {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Telescope find files'})
      vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep'})
      vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers'})
      vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help tags'})
      vim.keymap.set('n', '<Leader>j', ':bp<CR>', { desc = 'Telescope previos buffer'})
      vim.keymap.set('n', '<Leader>k', ':bn<CR>', { desc = 'Telescope next buffer'})
      vim.keymap.set('n', '<Leader>b', ':Telescope buffers <CR>', { desc = 'Telescope buffers'})
      vim.keymap.set('n', '<Leader>gs', builtin.git_status, { desc = 'Lista los cambios actuales'})
      vim.keymap.set('n', '<Leader>gc', builtin.git_commits, { desc = 'Lista los commits con preview reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h'})
    end
    },
    {
      'nvim-telescope/telescope-ui-select.nvim',
      config = function ()
        require("telescope").setup {
          defaults = {
            file_ignore_patterns = { "node_modules", "%.git/", "dist", "build" }
          },
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        }
        require("telescope").load_extension("ui-select")
      end
    }
}
