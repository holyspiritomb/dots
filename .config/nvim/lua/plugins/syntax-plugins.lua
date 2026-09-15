return {
  {
    'ericpruitt/tmux.vim',
    event = {"BufEnter *tmux*"},
    ft = "tmux",
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/vim")
    end,
  }, -- tmux syntax, most up to date
  -- {'Fymyte/rasi.vim'},
  -- {'Mudskipper875/adblock-syntax.vim', event = "BufEnter adguard*.txt",},
  -- {'hail2u/vim-css3-syntax' },
  -- {'acauamontiel/vim-stylus'},
  -- {'wavded/vim-stylus'},
  {
  'JosefLitos/i3config.vim',
  event = {"BufEnter **/i3*/config", "BufEnter **/sway/config"},
  },
  -- {'leafgarland/typescript-vim', ft = {"javascript", "typescript", "typescriptreact"}, event = {"BufEnter *.tsx", "BufEnter *.jsx", "BufEnter *.ts"}},
  {'m-pilia/vim-pkgbuild', event = "BufEnter PKGBUILD"},
  {'neoclide/jsonc.vim', ft = {"json", "jsonc"}, event = "BufEnter *.json"},
  {'raimon49/requirements.txt.vim', event = "BufEnter requirements*.txt"},
  {'rhysd/vim-gfm-syntax', ft = "markdown"},
}
