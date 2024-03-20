vim.o.background = "dark" -- or "light" for light mode
require("gruvbox").setup({
  contrast = "hard", -- can be "hard", "soft" or empty string
})
vim.cmd("colorscheme gruvbox")
