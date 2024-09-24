return {
  "tpope/vim-abolish",
  keys = {
    -- Ensure that typing `c` in normal mode will trigger the `Coerce Case` prompt.
    -- `c` usually enters "o" mode (operator-pending)
    { "r", "<Plug>(ABOLISH-coerce-word)", mode = "o", desc = "Coerce Case" },
    -- This is the default keybind but it still is needed for some reason I think
    { "cr", "<Plug>(abolish-coerce-word)", mode = "n", desc = "Coerce Case" },
    -- Coerce in visual mode
    { "cr", "<Plug>(abolish-coerce)", mode = "v", desc = "Coerce Case" },
  },
}
