local lspconfig = require("lspconfig")

local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'r_language_server', 'yamlls'}

for _, lsp in ipairs(servers) do
  local setup_config = {
    on_attach = on_attach,
    capabilities = capabilities
  }

  if lsp == 'clangd' then 
    setup_config.on_attach = function(client, bufnr) 
      client.server_capabilities.signatureHelpProvider = false
      on_attach(client, bufnr)
    end
  end

  lspconfig[lsp].setup(setup_config)
end

