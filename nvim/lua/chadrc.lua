---@type ChadrcConfig
local M = {}

M.ui = {
  statusline = {
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "word_count", "lsp", "cwd" },
    theme = "minimal",
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
      end,
    },
  },
}

M.base46 = {
  theme = "onenord",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  changed_themes = {
    onenord = {
      base_16 = {
        base00 = "#2E3440",
      },
      base_30 = {
        darker_black = "#2A303C",
      },
    },
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
