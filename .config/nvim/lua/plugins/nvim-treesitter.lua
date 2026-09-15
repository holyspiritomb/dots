return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    branch = "main",
    -- config = function()
    --   local configs = require("nvim-treesitter.configs")
    --   vim.treesitter.language.register('python', 'recipe')
    --   configs.setup({
    --     ensure_installed = { "html", "css", "javascript", "lua", "python", "yaml", "gitignore", "bash", "toml" },
    --
    --     -- Install parsers synchronously (only applied to `ensure_installed`)
    --     sync_install = false,
    --
    --     -- Automatically install missing parsers when entering buffer
    --     auto_install = false,
    --
    --     -- List of parsers to ignore installing (for "all")
    --     ignore_install = {},
    --     ---- If you need to change the installation directory of the parsers
    --     -- (see -> Advanced Setup)
    --     -- parser_install_dir = "~/.local/share/nvim/site/tsparsers",
    --     -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
    --
    --     indent = {
    --       disable = { "python" },
    --     },
    --
    --     highlight = {
    --       -- `false` will disable the whole extension
    --       enable = true,
    --
    --       -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    --       -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    --       -- the name of the parser)
    --       -- list of language that will be disabled
    --       disable = { "c", "rust" },
    --
    --       -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    --       -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    --       -- Using this option may slow down your editor, and you may see some duplicate highlights.
    --       -- Instead of true it can also be a list of languages
    --       additional_vim_regex_highlighting = true,
    --     },
    --   })
    -- end,
  },
}
