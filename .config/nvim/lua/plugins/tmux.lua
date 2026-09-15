return {
  {
    'ericpruitt/tmux.vim',
    event = {"BufEnter *tmux*"},
    ft = "tmux",
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/vim")
    end,
  }, -- tmux syntax, most up to date
}
