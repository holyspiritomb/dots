return {
  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
      {'HiPhish/rainbow-delimiters.nvim', dependencies = {'nvim-treesitter/nvim-treesitter'},},
    },
    main = "ibl",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require "ibl.hooks"
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        --[[ vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ff5f87" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#ffff87" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#878fff" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ffaf5f" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#00ffaf" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#d75fff" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#00d7ff" }) ]]
        vim.api.nvim_set_hl(0, "RainbowRed", { link = "RainbowDelimiterRed" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { link = "RainbowDelimiterYellow" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { link = "RainbowDelimiterBlue" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { link = "RainbowDelimiterOrange" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { link = "RainbowDelimiterGreen" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { link = "RainbowDelimiterViolet" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { link = "RainbowDelimiterCyan" })
      end)

      require("ibl").setup {
        indent = {
          highlight = highlight
        },
        scope = {
          enabled = true,
        }
      }
    end,
  },
}
