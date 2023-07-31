vim.o.background = "dark" -- or "light" for light mode
require("gruvbox").setup({
  contrast = "hard", -- can be "hard", "soft" or empty string
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")
