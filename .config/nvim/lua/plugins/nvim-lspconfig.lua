
return {
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    config = function()
      --Enable (broadcasting) snippet capability for completion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      local lspconfig = vim.lsp.config
      local csslsft = {
          "scss", "css", "stylus", "less"
      }
      lspconfig('cssls', {
        capabilities = capabilities,
        filetypes = csslsft,
      })
      local unoft = {
        "scss", "css", "vue", "html", "markdown", "vue-html"
      }
      lspconfig('unocss', {
        -- on_attach = on_attach,
        capabilities = capabilities,
        filetypes = unoft,
        -- root_dir = function(fname)
        --   return require 'lspconfig.util'.root_pattern(...)(fname)
        -- end
      })
      local customizations = {
        { rule = 'style/*', severity = 'off', fixable = true },
        { rule = 'format/*', severity = 'off', fixable = true },
        { rule = '*-indent', severity = 'off', fixable = true },
        { rule = '*-spacing', severity = 'off', fixable = true },
        { rule = '*-spaces', severity = 'off', fixable = true },
        { rule = '*-order', severity = 'off', fixable = true },
        { rule = '*-dangle', severity = 'off', fixable = true },
        { rule = '*-newline', severity = 'off', fixable = true },
        { rule = '*quotes', severity = 'off', fixable = true },
        { rule = '*semi', severity = 'off', fixable = true },
      }
      -- Enable eslint for all supported languages
      lspconfig('eslint', {
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
          "vue",
          "html",
          -- "markdown",
          "json",
          "jsonc",
          -- "yaml",
          -- "toml",
          -- "xml",
          -- "gql",
          -- "graphql",
          "astro",
          "svelte",
          -- "css",
          -- "less",
          -- "scss",
          "pcss",
          "postcss"
        },
        settings = {
          -- Silent the stylistic rules in you IDE, but still auto fix them
          rulesCustomizations = customizations,
          packageManager = "yarn",
        },
      })
    end,
  },
}
