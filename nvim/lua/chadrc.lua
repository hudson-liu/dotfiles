---@type ChadrcConfig
local M = {}

M.ui = {
  telescope = { style = "bordered" },
  statusline = {
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "word_count", "lsp", "cwd" },
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
  theme = "nord",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NvimTreeRootFolder = { fg = "#8fbcbb", bg = "NONE", bold = true },
    NvimTreeGitNew = { fg = "#eceff4", bg = "NONE" },
    NvimTreeGitDirty = { fg = "#eceff4", bg = "NONE" },
    NvimTreeGitDeleted = { fg = "#eceff4", bg = "NONE" },
  },

  changed_themes = {
    nord = {
      base_16 = {
        base00 = "#2E3440",
        base01 = "#3B4252",
        base02 = "#434C5E",
        base03 = "#4C566A",
        base04 = "#D8DEE9",
        base05 = "#bfc5d0",
        base06 = "#ECEFF4",
        base07 = "#8FBCBB",
        base08 = "#81A1C1",
        base09 = "#88C0D0",
        base0A = "#EBCB8B",
        base0B = "#A3BE8C",
        base0C = "#88C0D0",
        base0D = "#5E81AC",
        base0E = "#8FBCBB",
        base0F = "#81A1C1",
      },
      base_30 = {
        statusline_bg = "#2E3440",
      },
    },
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
