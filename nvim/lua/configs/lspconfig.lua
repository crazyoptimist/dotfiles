require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "gopls", "rust_analyzer", "pyright", "terraform-ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
