return {
  {
    "manu-mannattil/vim-longlines",
    priority = 1000,
    config = function()
      vim.api.nvim_create_autocmd({"BufRead"}, {
        group = special_settings_group,
        desc = "long lines",
        callback = function()
          if vim.fn.expand("%:t") == "lsp.log" or vim.bo.filetype == "help" or vim.bo.filetype == "xml" or vim.bo.filetype == "svg" or vim.bo.filetype == "html" or vim.bo.filetype == "css" then
            return
          else
            local maxwidth = vim.fn.winwidth(vim.fn.winnr())
            local linetotal = vim.fn.line("$")
            local size = vim.fn.getfsize(vim.fn.expand("%"))
            if (size > maxwidth * linetotal) or (vim.fn.expand("%:t:r:e") == "min") then
              local hlsearch = vim.opt.hlsearch
              local lazyredraw = vim.opt.lazyredraw
              local showmatch = vim.opt.showmatch
              local wrapping = vim.opt.wrap

              vim.bo.undofile = false
              vim.opt.wrap = false
              vim.wo.colorcolumn = ""
              vim.wo.relativenumber = false
              vim.wo.foldmethod = "manual"
              vim.wo.spell = false
              vim.opt.hlsearch = false
              vim.opt.lazyredraw = true
              vim.opt.showmatch = false

              vim.cmd([[LongLines]])
              vim.cmd([[echo 'LongLines on']])
              vim.api.nvim_create_autocmd("BufDelete", {
                buffer = 0,
                callback = function()
                  vim.cmd([[LongLines\!]])
                  vim.opt.hlsearch = hlsearch
                  vim.opt.lazyredraw = lazyredraw
                  vim.opt.showmatch = showmatch
                  vim.opt.wrap = wrapping
                  vim.cmd([[echo 'LongLines off']])
                end,
                desc = "set the settings back to what they were before",
              })
            end
          end
        end,
      })
      function ShortLines()
        if vim.b.longlines then return false
        else return true
        end
      end
    end,
  },

}
