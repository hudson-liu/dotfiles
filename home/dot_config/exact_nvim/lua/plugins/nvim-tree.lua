return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    hijack_cursor = true,
    view = {
      width = 25,
    },
    sync_root_with_cwd = true, -- CD will also change Nvim-Tree
    update_focused_file = {
      enable = true,
      update_root = true,
    },
    actions = { -- Uses "global cd" instead of "lcd"
      change_dir = {
        global = true,
      },
    },
  },
}
