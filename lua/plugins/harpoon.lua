return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "folke/which-key.nvim" },
  event = "VeryLazy",
  config = function()
    local harpoon = require "harpoon"
    local conf = require("telescope.config").values
    local wk = require "which-key"

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    harpoon.setup()

    wk.add {
      {
        "<leader>hx",
        function()
          harpoon:list():add()
        end,
        desc = "harpoon mark file",
        icon = "󰓾",
      },
      {
        "<leader>ht",
        function()
          toggle_telescope(harpoon:list())
        end,
        desc = "harpoon toggle menu",
        icon = "",
      },
      {
        "<leader>hl",
        function()
          harpoon:list():next()
        end,
        desc = "harpoon next mark",
        icon = "󰛂",
      },
      {
        "<leader>hp",
        function()
          harpoon:list():prev()
        end,
        desc = "harpoon prev mark",
        icon = "󰛁",
      },
      {
        "<leader>hd",
        function()
          harpoon:list():remove()
        end,
        desc = "harpoon delete mark",
        icon = "",
      },
      {
        "<leader>hc",
        function()
          harpoon:list():clear()
        end,
        desc = "harpoon nuke marks",
        icon = "󰚤",
      },
    }
  end,
}
