return {
  {
    "eero-lehtinen/oklch-color-picker.nvim",
    event = "VeryLazy",
    version = "*",
    keys = {
      -- One handed keymap recommended, you will be using the mouse
      {
        "<leader>v",
        function() require("oklch-color-picker").pick_under_cursor() end,
        desc = "Color pick under cursor",
      },
    },
    ---@type oklch.Opts
    opts = {
      highlight = {
        style = "virtual_left",
        virtual_text = " "
      },
      -- patterns = {
      --   tw_vec = {
      --     priority = 5,
      --     format = "rgb",
          -- custom_parse = function(match)
          --   return 231
          -- end,
          -- "%s()(%d+%s%d+%s%d+)()%;",
        -- },
      -- }
    },
  }
}

