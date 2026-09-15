return {
  {
    'MeanderingProgrammer/py-requirements.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('py-requirements').setup({
        -- Endpoint used for getting package versions
        index_url = 'https://pypi.org/simple/',
        -- Fallback endpoint in case 'index_url' fails to find a package
        extra_index_url = nil,
        -- Specify which file patterns plugin is active on
        -- For info on patterns, see :h pattern
        file_patterns = { '.*requirements.*.txt', '.*pyproject.*.toml' },
        -- Options for how diagnostics are displayed
        diagnostic_opts = { padding = 5 },
        -- For available options, see :h vim.lsp.util.open_floating_preview
        float_opts = { border = 'rounded' },
        filter = {
          -- Pull only final release versions, this will ignore alpha, beta,
          -- release candidate, post release, and developmental release versions
          final_release = false,
          -- Ignore yanked package versions
          yanked = true,
        },
        -- Enabled by default if you want to disable lsp completions set to false
        enable_lsp = true,
      })
    end,
  },
}
