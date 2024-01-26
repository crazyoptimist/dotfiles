require('dashboard').setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        {
          desc = 'Update Plugins',
          action = 'PackerSync',
          key = 'u'
        },
        {
          desc = 'Find Files',
          action = 'Telescope find_files',
          key = 'f',
        },
      },
    },
  })
