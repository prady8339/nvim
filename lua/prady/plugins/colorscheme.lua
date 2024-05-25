return {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    require("vscode").setup({
      -- Alternatively set style in setup
      -- style = 'light'

      -- Enable transparent background
      transparent = true,

      -- Enable italic comment
      italic_comments = true,

      -- Underline `@markup.link.*` variants
      underline_links = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        vscLineNumber = "#FFFFFF",
      },

      -- Override highlight groups (see ./lua/vscode/theme.lua)
      group_overrides = {},
    })
    vim.cmd("colorscheme vscode")
  end,
}
