return {
  -- Formatter
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  -- LSP Handling
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Language Parser & Improved Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
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
      },
    },
  },

  -- LaTeX Compatibility w/ Vim
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_method = "zathura"
      vim.opt.conceallevel = 1
      vim.g.tex_conceal = "abdmg"
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "/home/j/Documents/Notes/LaTeX_Build",
        options = { -- deletes default dictionary
          "--shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
          "-f",
        },
      }
      vim.g.vimtex_compiler_latexmk_engines = {
        _ = "-xelatex",
      }
    end,
  },

  -- Interactive Jupyter-like Sessions in Neovim
  {
    "jpalardy/vim-slime",
    lazy = false,
    init = function()
      vim.g.slime_target = "kitty"
      vim.g.slime_no_mappings = 1
      vim.g.slime_bracketed_paste = 1
    end,
  },

  -- File Summary
  {
    "stevearc/aerial.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
      layout = {
        width = 20,
      },
    },
  },

  -- Breadcrumbs on Header
  {
    "utilyre/barbecue.nvim",
    event = "LspAttach",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {},
  },

  -- Java Language Support
  {
    "mfussenegger/nvim-jdtls",
    lazy = false,
  },

  -- Built-In Keypress Display
  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
  },

  -- Built-In Timer
  {
    "nvchad/timerly",
    cmd = "TimerlyToggle",
  },

  -- Smooth Scrolling
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require("neoscroll").setup {}
    end,
  },

  -- Built-In Typing Test
  {
    "nvchad/typr",
    lazy = false,
  },

  -- Image Support
  {
    "3rd/image.nvim",
    build = false,
    lazy = false,
    opts = {
      processor = "magick_cli",
    },
  },

  -- Customizations for Nvim Tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = {
      filters = {},
      hijack_unnamed_buffer_when_opening = true,
      renderer = {
        root_folder_label = ":~:s?$?/..?",
      },
    },
  },
}
