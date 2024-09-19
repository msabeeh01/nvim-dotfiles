return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "zbirenbaum/copilot-cmp",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<CR>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          fallback()
        else
          fallback()
        end
      end, { "i", "s" }),
    })
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "copilot" },
      -- Other sources...
    })
    return opts
  end,
}
