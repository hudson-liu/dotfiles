return {
  "gaoDean/autolist.nvim",
  ft = "markdown",
  opts = {},
  keys = {
    { "<CR>", "<CR><cmd>AutolistNewBullet<cr>", mode = "i", ft = "markdown" },
    { "o", "o<cmd>AutolistNewBullet<cr>", ft = "markdown" },
    { "O", "O<cmd>AutolistNewBulletBefore<cr>", ft = "markdown" },
    { "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>", ft = "markdown" },
  },
}
