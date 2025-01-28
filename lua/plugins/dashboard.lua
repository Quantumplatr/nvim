-- Ref: https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md

-- Header text is ASCII art generated from https://patorjk.com/software/taag/#p=display&t=eefvim
-- Fonts I've liked so far for it:
-- - Shaded Blocky
-- - ANSI Shadow
-- - Bloody
-- - Larry 3D
-- - NScript
-- - Stop

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        preset = {
          header = [[
             ___       _       
            / __)     (_)      
  ____ ____| |__ _   _ _ ____  
 / _  ) _  )  __) | | | |    \ 
( (/ ( (/ /| |   \ V /| | | | |
 \____)____)_|    \_/ |_|_|_|_|
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

          -- Date
          {
            pane = 2,
            text = { { "\n" } },
            height = 0,
          },
          {
            pane = 2,
            -- title = "Date",
            section = "terminal",
            cmd = "date +'%a %b %d' | figlet -t -c -f pagga | lolcat",
            height = 7,
            padding = 0,
          },
          -- Git
          {
            pane = 2,
            title = "Open Issues",
            section = "terminal",
            cmd = 'gh issue list -L 3 --assignee "@me"',
            key = "i",
            action = function()
              vim.fn.jobstart("gh issue list --web", { detach = true })
            end,
            icon = " ",
            height = 7,
            padding = 1,
            indent = 3,
          },
          {
            pane = 2,
            icon = " ",
            section = "terminal",
            title = "Open PRs",
            cmd = 'gh pr list -L 3 --assignee "@me"',
            key = "p",
            action = function()
              vim.fn.jobstart("gh pr list --web", { detach = true })
            end,
            height = 7,
            padding = 1,
            indent = 3,
          },
          {
            pane = 2,
            icon = "",
            title = "Git Status",
            section = "terminal",
            -- enabled = Snacks.git.get_root() ~= nil, -- TODO: figure out why this breaks
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          -- Startup
          {
            section = "startup",
          },
        },
      },
    },
  },
}
