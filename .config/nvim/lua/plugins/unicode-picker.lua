return {
  {"cosmicboots/unicode_picker.nvim",
    dependencies = {
        {"nvim-telescope/telescope.nvim"},
    },
    config = function()
      require("telescope").load_extension "unicode_picker"
      vim.keymap.set("n", "<leader>tu", "<cmd>Telescope unicode_picker<cr>", {desc = "picker from unicode_picker.nvim"})
    end,
  },
}
