return {
  {
    'nvim-telescope/telescope.nvim', version = "*",
    dependencies = {
      {'nvim-lua/plenary.nvim'},
      'nvim-telescope/telescope-fzf-native.nvim',
      {"tsakirist/telescope-lazy.nvim"},
      {
        "polirritmico/telescope-lazy-plugins.nvim",
        init = function()
          -- load_extension_after_telescope_is_loaded("lazy_plugins")
          require('telescope').load_extension('lazy_plugins')
        end,
        keys = {
          { "<leader>tl", "<Cmd>Telescope lazy_plugins<CR>", desc = "Telescope: Plugins configurations" },
          { "<leader>lp", "<Cmd>Telescope lazy_plugins<CR>", desc = "Telescope: Plugins configurations" },
        },
      },
    },
    opts = {
      defaults = {
        wrap_results = true,
        mappings = {
          i = {
            ['<ScrollWheelUp>'] = require("telescope.actions").move_selection_previous,
            ['<ScrollWheelDown>'] = require("telescope.actions").move_selection_next,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                           -- the default case_mode is "smart_case"
        },
        lazy_plugins = {
          lazy_config = vim.fn.stdpath("config") .. "/lua/config/lazy.lua", -- Must be a valid path to the file containing the lazy spec and setup() call.
          opts_viewer = "tab",
        },
      }
    },
    init = function()
      require('telescope').load_extension('fzf')
      local function SiblingFiles()
        require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })
      end
      vim.keymap.set('n', '<leader>.', SiblingFiles) -- find sibling files to current buffer
      vim.keymap.set('n', '<leader>tt', "<Cmd>Telescope<cr>", {desc = 'Telescope'})
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Telescope find files'})
      vim.keymap.set('n', '<leader>tg', builtin.live_grep, {desc = ' Telescopelive grep'})
      vim.keymap.set('n', '<leader>tb', builtin.buffers, {desc = 'Telescope buffers'})
      vim.keymap.set('n', '<leader>t?', builtin.help_tags, {desc = 'Telescope help_tags'})
      vim.keymap.set('n', '<leader>th', builtin.highlights, {desc = 'Telescope highlights'})
      vim.keymap.set('n', '<leader>tc', builtin.commands, {desc = 'Telescope commands'})
      vim.keymap.set('n', '<leader>ta', builtin.autocommands, {desc = 'Telescope autocommands'})
      vim.keymap.set('n', '<leader>tk', builtin.keymaps, {desc = 'Telescope keymaps'})
      require('telescope').load_extension('lazy')
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
  },
}
