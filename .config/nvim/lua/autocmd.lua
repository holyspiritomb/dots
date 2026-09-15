-- Large File Enhancements {{{
vim.api.nvim_create_autocmd("BufRead", {
  group = special_settings_group,
  desc = "large file enhancements.",
  callback = function()
    if vim.fn.expand("%:t") == "lsp.log" or vim.bo.filetype == "help" then
      return
    end

    local size = vim.fn.getfsize(vim.fn.expand("%"))
    if size > 1024 * 512 then
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
      -- vim.bo.ale_enabled = 0

      vim.api.nvim_create_autocmd("BufDelete", {
        buffer = 0,
        callback = function()
          vim.opt.hlsearch = hlsearch
          vim.opt.lazyredraw = lazyredraw
          vim.opt.showmatch = showmatch
          vim.opt.wrap = wrapping
        end,
        desc = "set the global settings back to what they were before",
      })
    end
  end,
}) --}}}

local filetype_commands_group = vim.api.nvim_create_augroup("FILETYPE_COMMANDS", { clear = true })
-- Audiobook and ebook metadata filetypes {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "*.odm*",
  callback = function()
    vim.bo.filetype = "xml"
    vim.cmd([[set syntax=xml]])
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "*.opf",
  callback = function()
    vim.bo.filetype = "xml"
    vim.cmd([[set syntax=xml]])
  end,
})
-- }}}

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "**/i3/config",
  callback = function()
    vim.bo.filetype = "i3config"
    vim.cmd([[set syntax=i3config]])
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "**/i3status/config",
  callback = function()
    vim.bo.filetype = "confini"
    vim.cmd([[set syntax=confini]])
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = {"**/*.recipe$", "*.recipe", "*.recipe.py"},
  callback = function()
    vim.bo.filetype = "python"
    vim.cmd([[set syntax=python]])
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "pacman.conf",
  callback = function()
    vim.bo.filetype = "confini"
    vim.cmd([[set syntax=confini]])
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "*mirrorlist*",
  callback = function()
    vim.bo.filetype = "confini"
    vim.cmd([[set syntax=confini]])
  end,
}) --}}}

-- gitignore filetype {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = ".gitignore",
  callback = function()
    vim.bo.filetype = "gitignore"
  end,
})--}}}

-- webext manifest filetype {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = filetype_commands_group,
  pattern = "manifest.json*",
  callback = function()
    vim.bo.filetype = "json"
    vim.cmd([[set syntax=json]])
  end,
})--}}}

-- pkgbuild filetype {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
  group = filetype_commands_group,
  pattern = "PKGBUILD",
  callback = function()
    -- vim.bo.filetype="PKGBUILD"
    vim.cmd([[echo 'Entered a pkgbuild']])
  end,
})--}}}

-- grub filetype {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
  group = filetype_commands_group,
  pattern = "/etc/grub*",
  callback = function()
    vim.bo.filetype = "grub"
    vim.cmd([[set syntax=grub]])
  end,
})--}}}

-- lua filetype {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
  group = filetype_commands_group,
  pattern = "*.lua",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.shiftwidth = 2
  end,
})--}}}
-- js and ts filetypes {{{
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
  group = filetype_commands_group,
  pattern = {"*.[c|m]js", "*.js", "*.jsx", "*.ts*", "eslint.config.*js", "*.vue"},
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.shiftwidth = 2
  end,
})--}}}
vim.cmd([[autocmd FileType stylus setl iskeyword+=@-@]])
