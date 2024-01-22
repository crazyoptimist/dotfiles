require("formatter").setup {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    solidity = {
      function()
        return {
          exe = "forge",
          args = { "fmt", "--raw", "-" },
          stdin = true,
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
