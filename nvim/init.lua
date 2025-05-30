vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.g.table_mode_corner = "|"
vim.g.show_words_in_line = true

if vim.g.neovide then
  vim.o.guifont = "FiraCode_Nerd_Font:h9:w-0.4"
  vim.opt.linespace = -1
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "norg", "lua", "html", "css" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
  end,
})
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd "ShowkeysToggle"
  end,
})
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#4c566a", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#4c566a", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#8fbcbb", bg = "NONE" })
  end,
})
