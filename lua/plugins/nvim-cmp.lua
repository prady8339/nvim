return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"
    local config = require "nvchad.configs.cmp"
    config.mapping["<Tab>"] = nil
    config.mapping["<S-Tab>"] = nil
    config.mapping["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }
    config.mapping["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }
    return config
  end,
}
