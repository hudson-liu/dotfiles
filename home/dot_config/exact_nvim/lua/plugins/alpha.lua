return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local theta = require "alpha.themes.theta"
    local dashboard = require "alpha.themes.dashboard"
    theta.file_icons.provider = "devicons"
    table.remove(theta.buttons.val, 6) -- Remove Broken Config Button
    table.insert( -- Add Shortcut to Chezmoi Configuration File
      theta.buttons.val,
      dashboard.button("c", "  Configuration", "<cmd>edit ~/.local/share/chezmoi/README.md<CR>")
    ) -- Add an entry
    theta.header.val = {
      "                                                    ",
      " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "            (Configuration by Hudson Liu)           ",
    }
    require("alpha").setup(theta.config)
  end,
}
