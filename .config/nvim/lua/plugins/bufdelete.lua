return {
  {
    'famiu/bufdelete.nvim',
    event = "VeryLazy",
    keys = {
      {
        "bd",
        "<cmd>Bdelete<cr>",
        desc = "delete buffer without layout change"
      }
    }
  },
}
