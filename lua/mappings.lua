require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del
local utils = require "utils"

-- unmap existing mappings
unmap("n", "<leader>h")
unmap("n", "<leader>v")
unmap("n", "<leader>e")
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")

-- basic mappings
map("n", "<leader>ww", "<cmd>w<CR>", { desc = "General Write to file" })
map("n", "<leader>Q", "<cmd>q!<CR>", { desc = "General Force Quit" })
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "General Quit All" })

-- move
map("n", "H", "^", { desc = "move start of line" })
map("n", "L", "$", { desc = "move end of line" })
map("n", "J", "<C-d>", { desc = "move half page down" })
map("n", "K", "<C-u>", { desc = "move half page up" })

-- navigate
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate pane left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate pane below" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate pane above" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate pane right" })

-- window
map("n", "<leader>wv", "<C-w>v", { desc = "Window Split vertically" })
map("n", "<leader>wh", "<C-w>s", { desc = "Window split horizontally" })
map("n", "<leader>we", "<C-w>=", { desc = "Window splits equal size" })
map("n", "<leader>wx", "<cmd>close<CR>", { desc = "Window close current split" })
map("n", "<leader>wm", "<cmd> TZFocus<CR>", { desc = "Window focus" })

-- terminal
map("n", "<leader>tj", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal below" })

map("n", "<leader>tl", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal right" })

-- git
map("n", "<leader>ph", "<leader>ph", { desc = "Git preview hunk" })
map("n", "<leader>rh", "<leader>rh", { desc = "Git reset hunk" })
map("n", "<leader>gb", "<leader>gb", { desc = "Git blame" })
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Git LazyGit" })

-- copilot
map("n", "<leader>ce", "<cmd> Copilot enable<CR>", { desc = "Copilot Enable" })
map("n", "<leader>cd", "<cmd> Copilot disable<CR>", { desc = "Copilot Disable" })

-- utilities
map("n", "<leader>go", utils.compile_and_run, { desc = "Utility Compile and Run" })
map("n", "<leader>pp", utils.paste_clipboard, { desc = "Utility Paste clipboard content" })
map("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", { desc = "Utility Undo tree toggle" })

-- rename
map("n", "[d", "[d", { desc = "LSP previous diagnostic" })
map("n", "]d", "]d", { desc = "LSP next diagnostic" })
map("n", "<C-w>d", "<C-w>d", { desc = "LSP show diagnostics under cursor" })
map("n", "<C-n>", "<cmd> NvimTreeToggle<CR>", { desc = "toggle Nvimtree" })
map("n", "<leader>cc", "<leader>cc", { desc = "move current context" })
