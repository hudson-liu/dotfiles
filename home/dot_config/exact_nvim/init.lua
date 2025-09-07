-- Set Global Variables
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.vimtex_syntax_enabled = 0
vim.g.use_tmp_buffer = 1

-- Set Options
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mousemoveevent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.expandtab = true
if vim.g.neovide then
  vim.opt.guifont = "FiraCode_Nerd_Font:h8"
end

-- Loads Plugins
require "config.lazy"

-- Sets Color Theme
vim.cmd [[colorscheme tokyonight]]

-- Loads Mappings
require "keymaps"

-- LSPs
vim.diagnostic.config {
  virtual_text = true,
}
vim.lsp.enable "pyright" -- Python
vim.lsp.enable "marksman" -- Markdown
vim.lsp.enable "texlab" -- LaTeX
vim.lsp.enable "lua_ls" -- Lua
vim.lsp.enable "ccls" -- C/C++
vim.lsp.enable "ts_ls" -- TypeScript

-- ======[Autocommands]======
-- Applies Glyph-Pallette
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufReadPost", "BufNewFile" }, { command = "call glyph_palette#apply()" })
-- Changes to 4-Space Tab for Python (& Markdown)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "py", "md" },
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
  end,
})
-- Prevents Aerial from opening on unsupported window types
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == "NvimTree" or ft == "alpha" then
      vim.keymap.set("n", "<leader>a", function()
        vim.notify("Unsupported FileType for Aerial", vim.log.levels.WARN)
      end, { buffer = args.buf })
    end
  end,
})
-- Keeps Aerial centered on window resize
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    local aerial = require "aerial"
    if aerial.is_open() then
      aerial.close()
      vim.schedule(function()
        aerial.open {
          direction = "float",
          focus = false,
        }
      end)
    end
  end,
})
