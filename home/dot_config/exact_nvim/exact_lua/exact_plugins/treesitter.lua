return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter").setup()
    local ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "python",
      "csv",
      "cpp",
      "c",
      "gitignore",
      "toml",
      "yaml",
      "java",
      "json",
      "markdown",
      "vhs",
    }
    require("nvim-treesitter").install(ensure_installed)
  end,
}
