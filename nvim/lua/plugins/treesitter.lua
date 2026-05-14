return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      local install = require("nvim-treesitter.install")

      -- ✅ FORCE git (no curl at all)
      install.prefer_git = true

      -- ✅ use zig compiler
      install.compilers = { "zig" }

      -- ✅ IMPORTANT: ensure git is used safely
      vim.env.GIT_SSL_NO_VERIFY = "true"

      opts.ensure_installed = {
        "lua",
        "vim",
        "bash",
        "json",
      }

      opts.auto_install = true
    end,
  },
}