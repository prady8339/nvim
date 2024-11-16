local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    rust = { "rustfmt" },
    python = { "black" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    typescript = { "prettier" },
    yaml = { "prettier" },
  },

  formatters = {
    black = {
      prepend_args = { "--line-length", "79" },
    },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
