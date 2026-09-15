return  {
  {
    'shmup/xterm-color-table.vim',
    lazy = true,
    -- ft = {"dircolors", "vim", "vifm", "rasi", "zsh"},
    keys = {
      { -- lazy style key map
        "<leader>xt",
        "<cmd>XtermColorTable<cr>",
        desc = "load xterm-color-table",
      },
    },
  },
}
