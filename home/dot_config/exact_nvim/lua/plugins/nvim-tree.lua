return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    hijack_cursor = true,
    view = {
      width = 25,
    },
    update_focused_file = {
      enable = true,
      update_root = true,
    },
    respect_buf_cwd = true,
  },
}
