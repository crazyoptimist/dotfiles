require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "go", "ruby", "python", "terraform", "make", "html", "css", "solidity" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,

  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
  indent = { enable = true },
}
