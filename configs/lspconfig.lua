local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.sourcekit.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "sourcekit-lsp", "--log-level", "error" },
  filetypes = { "swift" },
}
