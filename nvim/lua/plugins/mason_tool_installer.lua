return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "delve",
          "docker-compose-language-service",
          "dockerfile-language-server",
          "gofumpt",
          "goimports",
          "golangci-lint",
          "gopls",
          "hadolint",
          "lua-language-server",
          "shfmt",
          "stylua",
          "tree-sitter-cli",
        },
        auto_update = false,
        run_on_start = true,
      })
    end,
  },
}
