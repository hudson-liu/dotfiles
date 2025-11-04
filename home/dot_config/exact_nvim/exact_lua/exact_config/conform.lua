return {
  formatters_by_ft = {
    lua = { "stylua" },
    tex = { "latexindent" },
    md = { "mdformat" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}
