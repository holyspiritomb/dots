return {
  {
    "chrisbra/unicode.vim",
    event = "VeryLazy",
    config = function()
      vim.keymap.set('n', 'ga', '<Plug>(UnicodeGA)')
      vim.keymap.del({'i'}, '<C-X><C-G>')
      vim.keymap.del({'i'}, '<C-X><C-Z>')
      vim.keymap.del({'n'}, '<leader>un')
    end,
  },
}
