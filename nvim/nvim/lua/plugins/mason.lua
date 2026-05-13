return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "typescript-language-server",
        "prettier",
        "stylua",
      },
    },
  },
}
