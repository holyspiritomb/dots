return {
  {
    'piersolenski/import.nvim',
    dependencies = {
      -- One of the following pickers is required:
      -- 'nvim-telescope/telescope.nvim',
      'folke/snacks.nvim',
      -- 'ibhagwan/fzf-lua',
    },
    opts = {
      picker = "snacks",
      -- picker = "telescope",
    },
    keys = {
      {
        "<leader>m",
        function()
          require("import").pick()
        end,
        desc = "Import",
      },
    },
  }
}
