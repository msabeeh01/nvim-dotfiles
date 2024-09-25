-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.vscode = true
require("marks").setup({
  default_mappings = true,
  signs = true,
  mappings = {},
})
