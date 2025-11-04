return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    sections = {
      lualine_a = { { "mode", separator = { left = "", right = "" } } },
      lualine_z = { { "location", separator = { left = "", right = "" } } },
    },
  },
}
