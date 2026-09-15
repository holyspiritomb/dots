return {
  {
    "liubianshi/icon-picker.nvim",
    dependencies = {
        "stevearc/dressing.nvim",
    },
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true
      })

      local opts = { noremap = true, silent = true }

      vim.keymap.set("n", "<Leader><Leader>nn", "<cmd>IconPickerNormal<cr>", opts)
      vim.keymap.set("n", "<Leader><Leader>yy", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ys", "<cmd>IconPickerYank symbols<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ye", "<cmd>IconPickerYank emoji<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>yf", "<cmd>IconPickerYank alt_font<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>yn", "<cmd>IconPickerYank nerd_font_v3<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>yc", "<cmd>IconPickerYank html_colors<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ii", "<cmd>IconPickerInsert<cr>", opts)
      vim.keymap.set("n", "<Leader><Leader>is", "<cmd>IconPickerInsert symbols<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>in", "<cmd>IconPickerInsert nerd_font_v3<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ia", "<cmd>IconPickerInsert alt_font<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ie", "<cmd>IconPickerInsert emoji<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("n", "<Leader><Leader>ic", "<cmd>IconPickerInsert html_colors<cr>", opts) --> Yank the selected icon into register
    end
  }
}
