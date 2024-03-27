require("neo-tree").setup({
  window = {
    position = "left",
    width = 30,
  },
  filesystem = {
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = true,
      hide_gitignored = true,
      hide_hidden = true, -- only works on Windows for hidden files/directories
      hide_by_name = {
        "node_modules",
      },
      always_show = {
        ".env",
        ".github",
      },
      never_show = {
        ".git",
      },
    },
  },
})

vim.keymap.set('n', '<c-n>', ':Neotree toggle<CR>')
