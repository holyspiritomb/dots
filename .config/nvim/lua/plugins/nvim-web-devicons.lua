return {
  {
    'nvim-tree/nvim-web-devicons',
    priority = 1000,
    opts = {
      override = {
        css = {
          icon = "󰅩",
          name = "Css"
        },
        PKGBUILD = {
          icon = "",
          name = "Pkgbuild"
        },
        opf = {
          icon = "󰗀",
          name = "EbookMetadata"
        },
        odm = {
          icon = "󰗀",
          name = "Overdrive"
        },
      },
      override_by_filename = {
        ["stylelint.config.js"] = {
          icon = "",
          name = "Stylelint"
        },
        ["config.ts"] = {
          icon = "󰛦",
          name = "ConfigInTS"
        },
        ["vite.config.ts"] = {
          icon = "󱐌",
          name = "ViteConfigTS"
        },
        ["vite.config.js"] = {
          icon = "󱐋",
          name = "ViteConfigJS"
        },
        ["package.json"] = {
          icon = "",
          name = "PkgJson"
        },
      }
    }
  }
}
