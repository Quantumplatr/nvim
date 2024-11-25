-- Ref: https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        preset = {
          header = [[
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░        ░░        ░░        ░░  ░░░░  ░░        ░░  ░░░░  ░
▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒   ▒▒   ▒
▓      ▓▓▓▓      ▓▓▓▓      ▓▓▓▓▓  ▓▓  ▓▓▓▓▓▓  ▓▓▓▓▓        ▓
█  ████████  ████████  ██████████    ███████  █████  █  █  █
█        ██        ██  ███████████  █████        ██  ████  █
████████████████████████████████████████████████████████████
]],
        },
        sections = {
          -- Header
          { section = "header" },
          -- Keymaps
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          -- Recent Files
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          -- Projects
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          -- Git
          {
            icon = "",
            title = "Git Status",
            section = "terminal",
            -- enabled = Snacks.git.get_root() ~= nil, TODO: figure out why this breaks
            cmd = "hub status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          -- Startup
          { section = "startup" },
        },
      },
    },
  },
}
