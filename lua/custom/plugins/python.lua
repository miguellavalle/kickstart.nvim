-- vim: ts=2 sts=2 sw=2 et
local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require("lspconfig").pylsp.setup {
  capabilities = cmp_capabilities,
  --on_attach = on_attach,
}

return {
  { "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.ruff,
      }
    })
  end
  }
}
