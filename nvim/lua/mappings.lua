require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map ("n", "<leader>co", "<cmd> VimtexCompile <cr>")
map ("n", "<leader>cv", "<cmd> VimtexView <cr>")
map ("n", "<leader>cq", "<cmd> VimtexStop <cr>")

map ("v", "<leader>dd", "<Plug>SlimeRegionSend")
map ("n", "<leader>dd", "<Plug>SlimeParagraphSend")
map ("n", "<leader>dc", "<cmd> SlimeConfig <cr>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
