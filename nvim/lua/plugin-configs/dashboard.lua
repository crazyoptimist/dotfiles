require('dashboard').setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        {
          desc = ' Find Files',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = "󰍉 Find Word",
          action = "Telescope live_grep",
          key = "g"
        },
        {
          desc = " Colorschemes",
          action = "Telescope colorscheme",
          key = "c"
        },
        {
          desc = ' Update Plugins',
          action = 'PackerSync',
          key = 'u'
        },
      },
    },
  })
