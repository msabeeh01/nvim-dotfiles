-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("marks").setup({
  default_mappings = true,
  signs = true,
  mappings = {},
})
