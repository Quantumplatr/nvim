-- Default LazyVim options but without remote flash
return {
  "folke/flash.nvim",
  keys = {
    -- REMOVED "Remote Flash" IN FAVOR OF `cr` for vim-abolish
    -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" }, -- Default LazyVim keybinding
    { "r", mode = "o", false }, -- Remove the default keybinding
  },
}
