-- Disable TS for very large files
local function disable_ts(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "python", "terraform", "make", "html", "css", "solidity", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = function(lang, bufnr)
      return lang == "cmake" or disable_ts(lang, bufnr)
    end,
  },

  indent = { enable = true },
}
