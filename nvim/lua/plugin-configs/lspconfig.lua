require("mason").setup()

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true })

require("mason-lspconfig").setup({
  ensure_installed = {
    "dockerls",
    "dotls",
    "golangci_lint_ls",
    "jsonls",
    "tsserver",
    -- "pyright",
    -- "solargraph",
    "terraformls",
    "yamlls",
    "lua_ls",
  }
})

require("lspconfig").dockerls.setup {}
require("lspconfig").dotls.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").terraformls.setup {}
require("lspconfig").lua_ls.setup {}
