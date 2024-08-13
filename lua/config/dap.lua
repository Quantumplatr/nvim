-- Reference: https://www.youtube.com/watch?v=Ul_WPhS2bis

local js_based_langauges = {
  "typescript",
  "javascript",
  "typescriptreact",
  "javascriptreact",
}

return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      local Config = require("lazyvim.config")

      ---------------------------------------------------
      --- From http://www.lazyvim.org/extras/dap/core ---
      ---           (nvim-dap full spec)              ---
      ---------------------------------------------------

      -- load mason-nvim-dap here, after all adapters have been setup
      if LazyVim.has("mason-nvim-dap.nvim") then
        require("mason-nvim-dap").setup(LazyVim.opts("mason-nvim-dap.nvim"))
      end

      vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

      for name, sign in pairs(LazyVim.config.icons.dap) do
        sign = type(sign) == "table" and sign or { sign }
        vim.fn.sign_define(
          "Dap" .. name,
          { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
        )
      end

      -- setup dap config by VsCode launch.json file
      local vscode = require("dap.ext.vscode")
      local json = require("plenary.json")
      vscode.json_decode = function(str)
        return vim.json.decode(json.json_strip_comments(str))
      end

      -- Extends dap.configurations with entries read from .vscode/launch.json
      if vim.fn.filereadable(".vscode/launch.json") then
        vscode.load_launchjs()
      end

      ---------------------------------------------------
      ---           End Code from LazyVim             ---
      ---------------------------------------------------

      -- for _, language in ipairs(js_based_langauges) do
      --   dap.configurations[language] = {
      --     -- Debug single nodejs files
      --     {
      --       type = "pwa-node",
      --       request = "launch",
      --       name = "Launch single file",
      --       program = "${file}",
      --       cwd = "${workspaceFolder}",
      --       sourceMaps = true,
      --     },
      --
      --     -- Debug nodejs processes (make sure to add --inspect when you run the process)
      --     {
      --       type = "pwa-node",
      --       request = "attach",
      --       name = "Attach to existing",
      --       processId = require("dap.utils").pick_process,
      --       cwd = "${workspaceFolder}",
      --       sourceMaps = true,
      --     },
      --
      --     -- Debug web applications (client side)
      --     {
      --       type = "pwa-chrome",
      --       request = "launch",
      --       name = "Launch & Debug Chrome",
      --       url = function()
      --         local co = coroutine.running()
      --         return coroutine.create(function()
      --           vim.ui.input({
      --             prompt = "Enter URL: ",
      --             default = "http://localhost:3000",
      --           }, function(url)
      --             if url == nil or url == "" then
      --               return
      --             else
      --               coroutine.resume(co, url)
      --             end
      --           end)
      --         end)
      --       end,
      --       webRoot = "${workspaceFolder}",
      --       skipFiles = { "<node_internals>/**/*.js" },
      --       protocol = "inspector",
      --       sourceMaps = true,
      --       userDataDir = false,
      --     },
      --
      --     -- Divider for the launch.json derived configs
      --     {
      --       name = "----- launch.json configs below -----",
      --       type = "",
      --       request = "launch",
      --     },
      --   }
      -- end
    end,
    -- keys = {
    --   {
    --     "<leader>da",
    --     function()
    --       if vim.fn.filereadable(".vscode/launch.json") then
    --         local dap_vscode = require("dap.ext.vscode")
    --         dap_vscode.load_launchjs(nil, {
    --           ["pwa-node"] = js_based_langauges,
    --           ["node"] = js_based_langauges,
    --           ["chrome"] = js_based_langauges,
    --           ["pwa-chrome"] = js_based_langauges,
    --         })
    --       end
    --       require("dap").continue()
    --     end,
    --     desc = "Run with Args",
    --   },
    -- },
    -- dependencies = {
    --   -- Install the vscode-js-debug adapter
    --   {
    --     "miscrosoft/vscode-js-debug",
    --     -- After install, build it and rename the dist directory to out
    --     build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    --   },
    --   {
    --     "mxsdev/nvim-dap-vscode-js",
    --     config = function()
    --       ---@diagnostic disable-next-line: missing-fields
    --       require("dap-vscode-js").setup({
    --
    --         -- Path to vscode-js-debug installation
    --         debugger_path = vim.fn.resolve(vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"),
    --
    --         -- which adapters to register in nvim-dap
    --         adapters = {
    --           "chrome",
    --           "pwa-node",
    --           "pwa-chrome",
    --           "pwa-msedge",
    --           "pwa-extensionHost",
    --           "node-terminal",
    --           "node",
    --         },
    --       })
    --     end,
    --   },
    --   {
    --     "Joakker/lua-json5",
    --     build = "./install.sh",
    --   },
    -- },
  },
}
