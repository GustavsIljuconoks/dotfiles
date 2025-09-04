return {
  -- { "ellisonleao/gruvbox.nvim" },
  -- { "shaunsingh/nord.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },

  {
    "LazyVim/LazyVim",
    init = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
