require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer" }
})
-- "lua_ls", "ts_ls", "pyright", "gopls", "rust_analyzer", "solidity_ls_nomicfoundation", "clangd"

-- import lspconfig plugin
local lspconfig = require("lspconfig")

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local keymap = vim.keymap -- for conciseness

local opts = { noremap = true, silent = true }

local on_attach = function(_, buffer)
  opts.buffer = buffer

  -- set keybinds
  keymap.set("n", "K", vim.lsp.buf.hover, opts)                          -- show documentation for what is under cursor
  keymap.set("n", "gD", vim.lsp.buf.declaration, opts)                   -- go to declaration
  keymap.set("n", "ge", vim.diagnostic.open_float, opts)                 -- show diagnostics for line
  keymap.set("n", "gn", vim.diagnostic.goto_next, opts)                  -- go to next diagnostics in the file
  keymap.set("n", "gp", vim.diagnostic.goto_prev, opts)                  -- go to prev diagnostics in the file
  keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)      -- show lsp definitions
  keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)       -- show definition, references
  keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)  -- show lsp implementations
  keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
  keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)  -- see available code actions, in visual mode will apply to selection
  keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)                -- smart rename
  keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)                 -- mapping to restart lsp if necessary
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- check out the default configurations any time you got stuck:
-- https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations

-- configure language servers
lspconfig["ts_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["pyright"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = { -- custom settings for lua
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

lspconfig["gopls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["solidity_ls_nomicfoundation"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["sqlls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern('.sqllsrc.json', '.git'),
})

lspconfig["terraformls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["pyright"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
