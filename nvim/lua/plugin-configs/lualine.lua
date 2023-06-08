require('lualine').setup {
  options = {
    theme = 'gruvbox',
  },
  sections = {
    lualine_a = {
      {
        'buffers',
        show_filename_only = true,   -- Shows shortened relative path when set to false.
        hide_filename_extension = false,   -- Hide filename extension when set to true.
        show_modified_status = true, -- Shows indicator when the buffer is modified.
      }
    }
  }
}
