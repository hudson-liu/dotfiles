return {
  "stevearc/aerial.nvim",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    show_guides = true,
    on_attach = function(bufnr)
      vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr })
      vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr })
    end,
    layout = {
      width = 20,
    },
    float = {
      relative = "editor",
      height = 20,
    },
  },
}
