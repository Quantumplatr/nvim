return {
  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      style = "night",
      on_highlights = function(hl, c)
        -- Window border
        hl.WinSeparator = {
          fg = c.comment,
          bg = c.bg,
        }
      end,
    },
  },

  -- One Dark
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "deep",
      colors = {
        custom_border_fg = "#61afef",
        custom_border_bg = "#21283b",
      },
      highlights = {
        WinSeparator = {
          -- fg = "$custom_border_fg",
          bg = "$custom_border_bg",
        },
      },
    },
  },

  -- Nightfox
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      palettes = {
        terafox = {
          -- bg1 = "#102529",
        },
      },
    },
  },

  -- Eldritch
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
    },
  },

  -- Configure LazyVim to load specified colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox",
    },
  },
}
