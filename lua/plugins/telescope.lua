return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local conf = require "nvchad.configs.telescope"
    conf.defaults.mappings.i = {
      ["<C-j>"] = require("telescope.actions").move_selection_next,
      ["<C-k>"] = require("telescope.actions").move_selection_previous,
      ["<Esc>"] = require("telescope.actions").close,
    }
    -- unset the tab and shift-tab mappings if needed
    conf.defaults.mappings.i["<Tab>"] = nil
    conf.defaults.mappings.i["<S-Tab>"] = nil
    return conf
  end,
}
