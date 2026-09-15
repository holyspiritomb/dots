return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local mode_map = {
        ['n']    = 'N',
        ['no']   = 'O-PENDING',
        ['nov']  = 'O-PENDING',
        ['noV']  = 'O-PENDING',
        ['no�'] = 'O-PENDING',
        ['niI']  = 'N',
        ['niR']  = 'N',
        ['niV']  = 'N',
        ['nt']   = 'N',
        ['v']    = '',
        ['vs']   = 'V',
        -- ['V']    = 'V-L',
        ['V']    = '-V-',
        ['Vs']   = 'V-L',
        ['�']   = 'V-B',
        ['�s']  = 'V-B',
        ['s']    = 'S',
        ['S']    = 'S-L',
        ['�']   = 'S-B',
        -- ['i']    = '',
        -- ['i']    = '',
        ['i']    = ' ',
        ['ic']   = 'I',
        ['ix']   = 'I',
        ['R']    = 'R',
        ['Rc']   = 'R',
        ['Rx']   = 'R',
        ['Rv']   = 'V-R',
        ['Rvc']  = 'V-R',
        ['Rvx']  = 'V-R',
        -- ['c']    = '',
        ['c']    = ' ',
        ['cv']   = 'EX',
        ['ce']   = 'EX',
        ['r']    = 'RE',
        ['rm']   = 'MORE',
        ['r?']   = 'CONFIRM',
        ['!']    = 'SH',
        ['t']    = 'TERM',
      }

      local function tstop()
        return vim.bo.tabstop
      end

      local function diff_source()
        local gitsigns = vim.b.gitsigns_status_dict
        if gitsigns then
          return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed
          }
        end
      end

      local function pkginfo()
        return require('package-info').get_status()
      end

      -- vim.cmd([[
      -- function! IsCocEnabled()
      --   return g:coc_enabled ? "coc 󰌬" : " "
      -- endfunction]])

      local function IsCoc()
        if vim.g.coc_enabled then
          local linting = vim.call('coc#client#is_running', vim.call('bufnr'))
          if linting == 0 then
            return "C  "
          else
            return "C  "
          end
        else
          return ""
        end
      end

      local function IsLongLines()
        if vim.b.longlines then return " "
        else return ""
        end
      end

      local function IsAleChecking()
        if vim.g.ale_enabled then
          local linting = vim.call('ale#engine#IsCheckingBuffer', vim.call('bufnr'))
          if linting == 0 then
            return "󰊦  "
          else
            return "󰊦  "
          end
        else
          return ""
        end
      end

      require('lualine').setup {
        options = {
          icons_enabled = true,
          -- theme = 'auto',
          theme = 'shado',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {function ()
              return mode_map[vim.api.nvim_get_mode().mode] or "__"
          end},
          lualine_b = {
            {
              'b:gitsigns_head',
              icon = '',
            }
          },
          lualine_c = {
            { 'filename',
              shorting_target = 20,
              path = 1,
              symbols = {
                modified = '󰧞',
                readonly = '',
                unnamed = '[no name]',
                newfile = '*',
              }
            },
          },
          lualine_x = {
            { 'filetype',
              colored = false,   -- Displays filetype icon in color if set to true
              icon_only = false, -- Display only an icon for filetype
              separator = "",
            },
            { tstop },
          },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = { { 'b:gitsigns_head', icon = '' } },
          lualine_c = {
            { 'filename',
              shorting_target = 20,
              path = 1,
              symbols = {
                modified = '󰧞',
                readonly = '',
                unnamed = '[no name]',
                newfile = '[new]',
              }
            },
          },
          lualine_x = {
            { 'filetype',
              colored = false,   -- Displays filetype icon in color if set to true
              icon_only = true, -- Display only an icon for filetype
            },
          },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {
          lualine_a = {
            {
              'diff',
              source = diff_source,
              -- diff_color = {
                -- added = 'DiffAdd',
                -- modified = 'DiffText',
                -- removed = 'DiffDelete',
              -- },
              symbols = {
                added = ' +',
                modified = ' ~',
                removed = ' −'
              },
              color = {
                bg='#393552'
              },
              separator = { right = '', left = '' },
            },
          },
          lualine_b = {'buffers'},
          lualine_c = {
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates,
              color = { fg = "#ff9e64" },
            },
            { pkginfo },
          },
          lualine_x = {
            {
              IsLongLines,
              'b:longlines'
            },
            {
              IsCoc,
              'g:coc_enabled'
            },
            {
              IsAleChecking,
              'g:ale_enabled'
            }
          },
          lualine_y = {
            { 'diagnostics',
              sources = { 'ale', 'coc', 'nvim_lsp' },
              sections = { 'error', 'warn', 'info' },
              symbols = {
                error = ' ',
                warn = ' ',
                -- info = ' ',
                info = ' ',
                -- hint = '󰆽 ',
                hint = ' ',
              },
              always_visible = false,
            },
          },
          lualine_z = {
            { 'fileformat',
              icons_enabled = true,
              symbols = {
                unix = ' ',
                dos = '',
                mac = '',
              },
            },
          },
        },
        winbar = {},
        inactive_winbar = {},
        extensions = { 'fugitive', 'lazy', 'nvim-tree' }
      }
    end,
  },
}
