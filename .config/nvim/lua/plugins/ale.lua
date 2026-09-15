return {
  {
    'dense-analysis/ale',
    -- cond =  ShortLines,
    priority = 1000,
    -- branch = 'v3.3.x',
    config = function()
      local function MarkdownLinter()
        local filename = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        if string.find(filename, "autpunk") ~= nil then
          return "eslint"
        else
          return "markdownlint"
        end
      end
      vim.g.ale_close_preview_on_insert = 0
      vim.g.ale_cursor_detail = 1
      vim.g.ale_disable_lsp = "auto"
      -- vim.g.ale_detail_to_floating_preview = 1
      vim.g.ale_echo_cursor = 1
      vim.g.ale_echo_msg_error_str = ""
      vim.g.ale_echo_msg_format = '%severity% %code% (%linter%) %s'
      vim.g.ale_echo_msg_info_str = ""
      vim.g.ale_echo_msg_warning_str = ""
      vim.g.ale_exclude_highlights = { "line too long" }
      vim.g.ale_floating_preview = 1
      vim.g.ale_floating_window_border = {'│', '─', '╭', '╮', '╯', '╰', '│', '─'}
      vim.g.ale_javascript_eslint_suppress_missing_config = 1
      vim.g.ale_keep_list_window_open = 0
      vim.g.ale_lint_delay = 5000
      vim.g.ale_lint_on_save = 1
      vim.g.ale_list_vertical = 0
      vim.g.ale_list_window_size = 3
      vim.g.ale_lsp_show_message_format = '%severity% (%linter%) %s'
      vim.g.ale_lsp_suggestions = 1
      vim.g.ale_lua_luacheck_options = "--globals 'vim'"
      -- vim.g.ale_markdown_markdownlint_executable = 'markdownlint-cli2'
      vim.g.ale_open_list = 0
      vim.g.ale_python_flake8_options = "--extend-ignore=E501,I001"
      vim.g.ale_sign_column_always = 1
      vim.g.ale_sign_error = ""
      vim.g.ale_sign_highlight_linenrs = 1
      vim.g.ale_sign_info = ""
      vim.g.ale_sign_style_error = '>>'
      vim.g.ale_sign_style_warning = '>'
      vim.g.ale_sign_warning = ""
      vim.g.ale_vim_vint_show_style_issues = 0
      vim.g.ale_virtualtext_cursor = 0
      vim.g.ale_xml_xmllint_indentsize = 2

      local ale_linters = {}
      ale_linters.css = { "stylelint" }
      ale_linters.javascript = { "eslint" }
      ale_linters.typescript = { "eslint" }
      -- ale_linters.typescriptreact = {  }
      -- ale_linters.less = { "stylelint" }
      ale_linters.lua = { "luacheck" }
      ale_linters.python = { "flake8" }
      -- ale_linters.stylus = { "stylelint" }
      ale_linters.xml = { "xmllint" }
      vim.g.ale_linters = ale_linters
      vim.g.ale_linters["markdown"] = { MarkdownLinter }

      local ale_fixers = {}
      ale_fixers.css = {'css-beautify', 'stylelint','remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.scss = {'stylelint','remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.sass = {'stylelint','remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.less = {'stylelint','remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.lua = {'remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.html = {'html-beautify','remove_trailing_lines','trim_whitespace', 'prettier'}
      ale_fixers.javascript = { 'eslint','remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.vue = { 'eslint', 'volar', 'remove_trailing_lines','trim_whitespace', 'prettier' }
      ale_fixers.less = {'stylelint','remove_trailing_lines','trim_whitespace'}
      ale_fixers.python = { "remove_trailing_lines","trim_whitespace", }
      ale_fixers.vim = {'remove_trailing_lines','trim_whitespace'}
      ale_fixers.typescript = {'eslint', 'remove_trailing_lines','trim_whitespace', 'prettier'}
      ale_fixers.typescriptreact = {'eslint', 'remove_trailing_lines','trim_whitespace' }
      vim.g.ale_fixers = ale_fixers
      vim.g.ale_fixers["markdown"] = { MarkdownLinter, 'remove_trailing_lines','trim_whitespace'  }

      local ale_pattern_options = {}
      ale_pattern_options["\\.vue$"] = {
        ale_linters = {"eslint", 'volar'},
        ale_fixers = { 'eslint', 'volar', 'remove_trailing_lines','trim_whitespace', 'prettier' },
      }
      ale_pattern_options["\\.user\\.css$"] = {
        ale_fixers = { "stylelint", "trim_whitespace" },
        -- ale_linters = { "stylelint" }
      }
      ale_pattern_options["\\.min\\.js$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\.min\\.mjs$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\.min\\.cjs$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\.min\\.css$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\.user\\.js$"] = {
        ale_fixers = { "eslint", "remove_trailing_lines", "trim_whitespace" },
        -- ale_linters = { "eslint" }
      }
      ale_pattern_options["\\.cjs$"] = {
        ale_fixers = { "remove_trailing_lines", "trim_whitespace" },
        -- ale_linters = { "tsserver" }
      }
      ale_pattern_options["\\.user\\.less$"] = {
        ale_fixers = {"stylelint", "trim_whitespace" },
        -- ale_linters = { "stylelint" }
      }
      ale_pattern_options["init\\.vim$"] = {
        ale_fixers = { "trim_whitespace" },
        -- ale_linters = { "vint" }
      }
      ale_pattern_options["plugins\\.lua$"] = {
        ale_fixers = { "remove_trailing_lines", "trim_whitespace", "prettier" },
        ale_linters = { "luacheck" },
      }
      ale_pattern_options["README\\.md$"] = {
        ale_fixers = { "remove_trailing_lines", "trim_whitespace" },
        ale_linters = { "cocmarkdownlint" }
      }
      ale_pattern_options["\\.nvim\\.md$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\node-modules\\.md$"] = {
        ale_enabled = 0
      }
      ale_pattern_options["\\pyxyzzy-custom\\/client\\/*"] = {
        ale_use_global_executables = 0
      }
      ale_pattern_options["\\autpunk.space\\/*.md"] = {
        ale_linters = { "eslint" },
        ale_fixers = { "eslint", "remove_trailing_lines", "trim_whitespace" },
      }
      ale_pattern_options["\\nvim\\/lua\\/*"] = {
        ale_lua_luacheck_options = "--ignore='W113,W112'"
      }

      vim.g.ale_pattern_options = ale_pattern_options

      -- pkgbuild filetype {{{
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
        group = filetype_commands_group,
        pattern = "PKGBUILD",
        callback = function()
          vim.b.ale_sh_shellcheck_exclusions = "SC2034,SC2154,SC2164"
        end,
      })--}}}

      -- recipe.py filetype {{{
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
        group = filetype_commands_group,
        pattern = "*.recipe.py",
        callback = function()
          vim.b.coc_root_patterns = { ".git", ".env", "venv", ".venv", "setup.cfg", "setup.py", "pyproject.toml", "pyrightconfig.json" }
          vim.b.ale_python_flake8_options = "--extend-ignore=E116,E117,E131,E402,E501,F401,I001,I004,F841,I005,I003"
          vim.b.ale_python_isort_options = "--dt --ds -o calibre"
          local ale_python_pyright_config = {}
          ale_python_pyright_config["pyright"] = {
            disableLanguageServices = true,
            disableOrganizeImports = true,
          }
          vim.b.ale_python_pyright_config = ale_python_pyright_config
        end,
      })--}}}

      -- vitepress markdowns {{{
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufEnter" }, {
        group = filetype_commands_group,
        pattern = {"*.ts", "*.js", "*.vue", "*.md"},
        callback = function()
          local filename = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
          if string.find(filename, "autpunk") ~= nil then
            vim.g.ale_javascript_eslint_executable = "/home/spiritomb/git/autpunk.space/node_modules/.bin/eslint"
            vim.g.ale_linters_ignore = { "mdl", "markdownlint", "markdownlint-cli2", "marksman" }
            vim.g.ale_fixers["markdown"] = { MarkdownLinter, "remove_trailing_lines", "trim_whitespace" }
            vim.g.ale_linters["markdown"] = { MarkdownLinter }
          end
        end,
      })--}}}



      vim.cmd([[
      function! IsAleLintingNow()
        return ale#engine#IsCheckingBuffer(bufnr()) ? "\uf0fc \uF254" : "\uf0fc \uf00c"
      endfunction]])
    end,
  },
  {'maksimr/vim-jsbeautify',
    lazy = true,
    -- event = "VeryLazy",
  },
}
