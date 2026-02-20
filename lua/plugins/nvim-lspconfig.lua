return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
        ts_ls = {},
        vtsls = {
          settings = {
            autoUseWorkspaceTsdk = true,
          },
        },
      },
    },
  },
}
