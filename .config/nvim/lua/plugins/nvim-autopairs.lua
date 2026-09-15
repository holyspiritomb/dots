return {
  {
    "windwp/nvim-autopairs",
    opts = {
      enable_check_bracket_line = false,
      map_bs = false,
      map_cr = false,
      disable_filetype = { "TelescopePrompt", "vim", "help" },
      check_ts = true,
    },
    init = function()
      -- Do not remove under any circumstances {{{
      -- this is required for autopairs and coc to play nicely together
      -- see https://github.com/windwp/nvim-autopairs/wiki/Completion-plugin
      -- it took me hours to troubleshoot this bullshit
      -- I fucking mean it {{{

      local remap = vim.api.nvim_set_keymap
      local npairs = require('nvim-autopairs')
      npairs.setup({map_cr=false})

      _G.MUtils= {}

      MUtils.completion_confirm=function()
          if vim.fn["coc#pum#visible"]() ~= 0  then
             return vim.fn["coc#pum#confirm"]()
         else
             return npairs.autopairs_cr()
         end
      end

      remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
      ---}}}
      ---}}}

    end
  },
}
