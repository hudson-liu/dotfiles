-- Load Default Plugins
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "pyright", "texlab", "clangd" }
local nvlsp = require "nvchad.configs.lspconfig"

-- LSPs w/ Default Config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Python
lspconfig.pyright.setup {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
}
