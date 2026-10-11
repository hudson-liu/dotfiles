return {
  "kaarmu/typst.vim",
  ft = "typst",
  lazy = false,
  init = function()
    vim.g.typst_pdf_viewer = "zathura"
    vim.g.typst_conceal = 1
  end,
}
