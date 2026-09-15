return {
  {
    "ziontee113/icon-picker.nvim",
    lazy = true,
    keys = {
      { "<leader>ii",  "<cmd>IconPickerInsert nerd_font_v3 symbols emoji alt_font<cr>", desc = "icon picker" },
    },
    cmd = "IconPickerInsert",
    opts = {
      disable_legacy_commands = true
    },
  },
}
