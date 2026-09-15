return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  priority = 999,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
-- return {
--   {
--     'nvim-tree/nvim-tree.lua',
--     dependencies = {
--       'nvim-tree/nvim-web-devicons', -- optional
--       'gitsigns.nvim',
--     },
--     opts = {
--       attach = on_attach,
--       disable_netrw = false,
--       hijack_netrw = true,
--       hijack_unnamed_buffer_when_opening = true,
--       hijack_cursor = true,
--       reload_on_bufenter = true,
--       select_prompts = true,
--       sort = {
--         sorter = "name",
--         folders_first = true
--       },
--       view = {
--         width = {
--           min = 30,
--           max = 40,
--           padding = 1,
--         },
--       },
--       renderer = {
--         add_trailing = true,
--         group_empty = true,
--         special_files = {
--           "Cargo.toml",
--           "Makefile",
--           "README.md",
--           "readme.md",
--           "package.json",
--           "tsconfig.json",
--           "PKGBUILD",
--           "babel.config.json",
--         },
--         highlight_git = "all",
--         highlight_diagnostics = "all",
--         highlight_opened_files = "all",
--         highlight_modified = "all",
--         indent_markers = {
--           enable = true,
--           inline_arrows = true,
--         },
--         icons = {
--           padding = "  ",
--           web_devicons = {
--             file = {
--               enable = true,
--               color = true,
--             },
--             folder = {
--               enable = true,
--               color = true,
--             }
--           },
--           git_placement = "after",
--           show = {
--             git = true,
--             modified = true,
--           },
--         }
--       },
--       git = {
--         enable = true,
--         show_on_dirs = true,
--         show_on_open_dirs = true,
--       },
--       modified = {
--         enable = true,
--         show_on_dirs = true,
--       },
--       diagnostics = {
--         enable = true,
--         show_on_dirs = false,
--         show_on_open_dirs = true,
--         icons = {
--           hint = "",
--           info = "",
--           warning = "",
--           error = "",
--         },
--       },
--       filters = {
--         dotfiles = false,
--       },
--       -- remove_keymaps = { 
--         -- "D", "<Tab>", "x", "c", "p", "y", "Y", "gy", "s", "d", 
--       -- },
--       actions = {
--         use_system_clipboard = false,
--         open_file = {
--           quit_on_open = false,
--         },
--       },
--     },
--   },
-- }
