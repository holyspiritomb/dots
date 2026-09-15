return {
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   -- lazy = true,
  --   event = VeryLazy,
  --   config = function()
  --     vim.g.catppuccin_flavour = 'mocha'
  --   end,
  -- },
  -- fluoromachine {{{
  -- {
  --   'maxmx03/fluoromachine.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function ()
  --     local fm = require 'fluoromachine'
  --
  --     fm.setup {
  --       theme = 'fluoromachine',
  --       brightness = 0.05,
  --       glow = true,
  --       transparent = false,
  --       styles = {
  --         comments = {},
  --         functions = {},
  --         variables = {},
  --         numbers = {},
  --         constants = {},
  --         parameters = {},
  --         keywords = {},
  --         types = {},
  --       },
  --       colors = {},
  --       overrides = {},
  --       plugins = {
  --         bufferline = false,
  --         cmp = false,
  --         dashboard = false,
  --         editor = true,
  --         gitsign = true,
  --         hop = false,
  --         ibl = true,
  --         illuminate = false,
  --         lazy = true,
  --         minicursor = false,
  --         ministarter = false,
  --         minitabline = false,
  --         ministatusline = false,
  --         navic = false,
  --         neogit = false,
  --         neotree = false,
  --         noice = false,
  --         notify = false,
  --         lspconfig = false,
  --         syntax = true,
  --         telescope = true,
  --         treesitter = true,
  --         tree = true,
  --         wk = false,
  --       },
  --     }
  --    -- vim.cmd.colorscheme 'fluoromachine'
  --   end
  -- },
  -- }}}
  {
    "https://git.sr.ht/~lmartinez/lualine-embark",
    name = "embark-lualine",
    priority = 1000
  },
  {
    "https://codeberg.org/jthvai/lavender.nvim",
    priority = 1000,
    config = function()
      -- Default config in lua
      -- vim.cmd([[highlight default link @string.lua Question]])
      -- vim.cmd([[highlight default link @string.jsonc Question]])
      vim.g.lavender = {
        transparent = {
          background = false, -- do not render the main background
          float      = false, -- do not render the background in floating windows
          popup      = false, -- do not render the background in popup menus
          sidebar    = false, -- do not render the background in sidebars
        },
        contrast = true, -- colour the sidebar and floating windows differently to the main background

        italic = {
          comments  = true, -- italic comments
          functions = false, -- italic function names
          keywords  = false, -- italic keywords
          variables = false, -- italic variables
        },

        signs = true, -- use icon (patched font) diagnostic sign text

        -- new values will be merged in
        overrides = {
          -- highlight groups - see theme.lua
          -- existing groups will be entirely replaced
          theme = {},

          colors = {
            cterm = {}, -- cterm colours - see colors/cterm.lua
            hex = {}, -- hex (true) colours - see colors/hex.lua
          },
        },
      }
    end,
  },
  {
    -- 'shaunsingh/moonlight.nvim',
    'blandcr/moonlight.nvim',
    config = function()
      vim.g.moonlight_italic_functions = 0
      vim.g.moonlight_italic_keywords = 0
      vim.g.moonlight_italic_strings = 1
      vim.g.moonlight_italic_variables = 0
    end,
  },
  -- {
  --   "lukelafountaine/shades-of-purple.vim",
  --   event = VeryLazy,
  -- },
  -- { 
  --   "nyoom-engineering/oxocarbon.nvim",
  --   -- lazy = true,
  --   event = VeryLazy,
  -- },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   event = "VeryLazy",
  --   opts = {},
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   -- lazy = true,
  --   event = VeryLazy,
  --   opts = {},
  -- },
  {
    "Shadorain/shadotheme",
    priority = 1000
  },
  -- {
  --   "folke/styler.nvim",
  --   lazy = true,
  --   config = function()
  --     require("styler").setup({
  --       themes = {
  --         help = { colorscheme = "shado" },
  --       },
  --     })
  --   end,
  -- },
    -- lazy
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rktjmp/lush.nvim",
    lazy = true,
    -- if you wish to use your own colorscheme:
    -- { dir = '/home/spiritomb/git/vitejs-lush.nvim', event = VeryLazy },
  },
}
