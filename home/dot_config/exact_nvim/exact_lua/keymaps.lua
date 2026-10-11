local map = vim.keymap.set

-- Nvim-Tree Toggle
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Aerial
map("n", "<leader>a", "<cmd>AerialToggle! float<cr>")

-- VimTeX
map("n", "<leader>cv", "<cmd>VimtexView<cr>")
map("n", "<leader>cq", "<cmd>VimtexStop<cr>")
map("n", "<leader>co", function()
  if vim.bo.filetype == "typst" then
    vim.cmd "TypstWatch"
  else
    vim.cmd "VimtexCompile"
  end
end)

-- Telescope
local builtin = require "telescope.builtin"
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope Buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope Help Tags" })

-- Bufferline
map("n", "<Tab>", ":BufferLineCycleNext<cr>")
map("n", "<S-Tab>", ":BufferLineCyclePrev<cr>")
