require("conform").setup({
  format_on_save = {
    -- These options will be passed to conform.format()
    -- timeout_ms = 1000,
    lsp_fallback = true,
    async = true,
  },
  formatters_by_ft = {
    rust = { "rustfmt" },
    go = { "gofmt", "goimports" },
    python = { "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    cpp = { "clangformat" },
    sql = { "sql_formatter" },
  },
})
