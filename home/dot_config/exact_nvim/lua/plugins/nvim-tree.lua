return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    hijack_cursor = true,
    view = {
      width = 25,
    },
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true,
    },
  },
}
