return {
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        hide_cursor = false,
        easing = "quartic",
      })
    end,
  },
}
