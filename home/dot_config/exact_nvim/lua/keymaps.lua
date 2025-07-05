local map = vim.keymap.set

-- Nvim-Tree Toggle
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Panel Movement
map("n", "<C-h>", "<C-w>h") -- (Left)
map("n", "<C-j>", "<C-w>j") -- (Up)
map("n", "<C-k>", "<C-w>k") -- (Down)
map("n", "<C-l>", "<C-w>l") -- (Right)

-- VimTeX
map("n", "<leader>co", "<cmd>VimtexCompile<cr>")
map("n", "<leader>cv", "<cmd>VimtexView<cr>")
map("n", "<leader>cq", "<cmd>VimtexStop<cr>")

-- Telescope
local builtin = require "telescope.builtin"
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope Buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope Help Tags" })

-- Bufferline
map("n", "<Tab>", ":BufferLineCycleNext<cr>")
map("n", "<S-Tab>", ":BufferLineCyclePrev<cr>")

-- ToggleTerm
map("n", "<C-\\>", function()
  local tr_api = require "nvim-tree.api"

  if tr_api.tree.is_visible() then
    local cmd1 = string.format "NvimTreeToggle"
    local cmd2 = string.format "ToggleTerm"
    vim.cmd(cmd1)
    vim.cmd(cmd2)
    vim.cmd(cmd1)
    vim.cmd "wincmd p"
    vim.defer_fn(function()
      vim.notify("Auto-Resized Terminal Window", vim.log.levels.WARN)
    end, 100)
  else
    vim.cmd "ToggleTerm"
  end
end)
