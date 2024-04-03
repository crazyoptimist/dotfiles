-- Want to disable TS for very large files
local function is_large_file(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "rust", "javascript", "python", "terraform", "make", "html", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = function(lang, bufnr)
      return lang == "cmake" or is_large_file(lang, bufnr)
    end,
  },

  indent = { enable = true },
}
