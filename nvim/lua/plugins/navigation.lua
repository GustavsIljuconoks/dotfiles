return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required for Telescope
    cmd = "Telescope", -- Ensures it loads when running `:Telescope`
    config = function()
      require("telescope")
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      telescope.setup({})

      -- Set keymaps
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      harpoon:setup()
      vim.keymap.set("n", "<leader>hh", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "[H]arpoon [H]arpoon" })
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
      end, { desc = "[H]arpoon [A]dd" })
      vim.keymap.set("n", "<leader>h1", function()
        harpoon:list():select(1)
      end, { desc = "[H]arpoon [1]" })
      vim.keymap.set("n", "<leader>h2", function()
        harpoon:list():select(2)
      end, { desc = "[H]arpoon [2]" })
      vim.keymap.set("n", "<leader>h3", function()
        harpoon:list():select(3)
      end, { desc = "[H]arpoon [3]" })
      vim.keymap.set("n", "<leader>h4", function()
        harpoon:list():select(4)
      end, { desc = "[H]arpoon [4]" })
    end,
  },
}
