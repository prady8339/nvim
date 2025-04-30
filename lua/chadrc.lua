-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

M.base46 = {
  theme = "aquarium",
  transparency = true,
  theme_toggle = { "aquarium", "one_light" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  nvdash = {
    load_on_startup = true,
    header = {
      "    .--._____,",
      " .-='=='==-, ",
      "(O_o_o_o_o_O) Hey Prady! "
    },
  },
}

M.cheatsheet = {
  theme = "grid",
  excluded_groups = {
    "which-key-trigger (x)",
    "which-key-trigger (i)",
    "terminal (t)",
    "autopairs",
    "Nvim",
    "Opens",
    "toggle (v)",
    "toggle (x)",
    ":help",
    ":help (i)",
    ":help (x)",
    "LSP (v)",
    "Toggle (v)",
    "Toggle (x)",
    "Show",
  },
}

M.mason = {
  cmd = true,
  pkgs = {
    "lua-language-server",
    "rust-analyzer",
    "typescript-language-server",
    "clangd",
    "pyright",
    -- "html",
    -- "cssls",
    -- "jsonls",
    "tailwindcss",
    "dockerls",
    "docker_compose_language_service",
  },
}

return M
