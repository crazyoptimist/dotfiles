local util = require "formatter.util"

require("formatter").setup {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.javascript").prettier,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    solidity = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--plugin=prettier-plugin-solidity",
          },
          stdin = true,
          try_node_modules = true,
        }
      end
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

-- Format after save

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
