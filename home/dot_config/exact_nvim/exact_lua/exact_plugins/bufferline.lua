return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require "bufferline"
    bufferline.setup {
      options = {
        style_preset = bufferline.style_preset.minimal,
        themable = false,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        indicator = {
          style = "underline",
        },
      },
    }
  end,
}
