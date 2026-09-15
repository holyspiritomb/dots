return {
  {
    'nullromo/telescope-box-drawing.nvim',
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require('telescope')
      telescope.load_extension('box-drawing')
    end,
  }
}
