-- require('options') -- set in config.lazy
vim.cmd([[let g:NERDCreateDefaultMappings = 0]])
require("config.lazy")
require('autocmd')
require('keymappings')

vim.cmd([[colorscheme lavender]])
-- vim.cmd([[colorscheme aurora]])
vim.cmd([[
hi SpellBad gui=undercurl cterm=underline
hi SpellCap gui=undercurl cterm=underline
hi SpellLocal gui=undercurl cterm=underline
hi SpellRare gui=undercurl cterm=underline
]])

if vim.env.TERM == 'tmux-256color' then
  vim.cmd([[
  highlight String cterm=none gui=none
  highlight Comment cterm=none gui=none
  ]])
end

vim.cmd([[
" highlight RainbowDelimiterRed guifg=#ff5f87 ctermfg=204
" highlight RainbowDelimiterYellow guifg=#ffff87 ctermfg=228
" highlight RainbowDelimiterBlue guifg=#878fff ctermfg=105
" highlight RainbowDelimiterOrange guifg=#ffaf5f ctermfg=215
" highlight RainbowDelimiterGreen guifg=#00ffaf ctermfg=49
" highlight RainbowDelimiterViolet guifg=#d75fff ctermfg=171
" highlight RainbowDelimiterCyan guifg=#00d7ff ctermfg=45
highlight FloatBorder guifg=#00d7ff ctermfg=45
" highlight PackageInfoOutdatedVersion guifg=#ffaf5f ctermfg=215 cterm=bold gui=bold
" highlight PackageInfoUpToDateVersion guifg=#379973 ctermfg=78
" highlight lualine_c_normal guifg=#aaaaaa ctermfg=45
highlight! link DataViewerColumn0 RainbowDelimiterRed
highlight! link DataViewerColumn1 RainbowDelimiterGreen
highlight! link DataViewerColumn2 RainbowDelimiterCyan
highlight! link PackageInfoUpToDateVersion RainbowDelimiterGreen
highlight! link PackageInfoOutdatedVersion RainbowDelimiterYellow
]])

require'nvim-treesitter'.setup {
    -- A directory to install the parsers and queries to.
    -- Defaults to the `stdpath('data')/site` dir.
    -- install_dir = "/some/path/to/store/parsers",
}
vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'bash',
    'css',
    'dockerfile',
    'gitignore',
    'html',
    'ini',
    'javascript',
    'json',
    'jsx',
    'kitty',
    'less',
    'lua',
    'markdown',
    'python',
    'rasi',
    'requirements',
    'scss',
    'sh',
    'stylus',
    'tmux',
    'toml',
    'tsx',
    'typescript',
    'vue',
    'xml',
    'yaml',
    'zsh',
  },
  callback = function() vim.treesitter.start() end,
})
