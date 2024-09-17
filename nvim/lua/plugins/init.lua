return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  	  ensure_installed = {
  	    "vim", "lua", "vimdoc",
        "html", "css", "python", "csv",
        "latex", "cpp", "c", "gitignore",
        "toml", "yaml", "java", "json", "markdown"
  	  },
  	},
  },

  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Documents/Notes",
          syntax = "markdown",
          ext = "md"
        }
      }
      vim.g.vimwiki_filetypes = {"markdown"} -- note to self. needed for compat w aerial
      vim.g.vimwiki_global_ext = 0
      vim.keymap.set("n", "<leader>wq", "<Plug>VimwikiNextLink")
      vim.keymap.set("n", "<leader>wu", "<Plug>VimwikiPrevLink")
    end,
  },

  {
    "jpalardy/vim-slime",
    lazy = false,
    init = function()
      vim.g.slime_target = "kitty"
      vim.g.slime_no_mappings = 1
      vim.g.slime_bracketed_paste = 1
    end
  },

  {
    "stevearc/aerial.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      backends = {
        ["vimwiki"] = {"markdown"},
      },
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
      layout = {
        width = 20,
      }
    }
  },

  {
    "utilyre/barbecue.nvim",
    event = "LspAttach",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {}
  }
}
