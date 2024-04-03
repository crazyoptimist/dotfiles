vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  },
  -- Disable dev icons
  -- renderer = {
  --   icons = {
  --     show = {
  --       file = false,
  --       folder = false,
  --       folder_arrow = false
  --     }
  --   }
  -- }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
