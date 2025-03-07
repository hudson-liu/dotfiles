-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  statusline = {
    -- order = { "mode", "file", "git", "word_count", "%=", "lsp_msg", "%=", "lsp", "cwd" },
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "lsp", "cwd" },
    theme = "minimal",
    -- seperator_style = "block", -- default, round, block, arrow
    modules = {
      word_count = function()
        local line = vim.api.nvim_get_current_line()
        local words = {}

        for word in string.gmatch(line, "%w+") do
          table.insert(words, word)
        end

        if vim.g.show_words_in_line then
          return " %#StText#L:" .. #words .. " "
        else
          return ""
        end
      end
    }
  }
}

M.base46 = {
	theme = "onenord",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.nvdash = {
  load_on_startup = true
}

return M
