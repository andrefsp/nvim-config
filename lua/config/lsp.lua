-- go language server
vim.lsp.enable("gopls")

-- rust analyzer
vim.lsp.enable("rust_analyzer")

-- python language serverr
vim.lsp.enable("pyright")

-- Lua language server
vim.lsp.enable("lua_ls")

-- Add signature help as we type.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.signatureHelpProvider then
      -- Auto-trigger on "(" and ","
      vim.keymap.set("i", "(", "(<cmd>lua vim.lsp.buf.signature_help()<CR>", { buffer = args.buf })
      vim.keymap.set("i", ",", ",<cmd>lua vim.lsp.buf.signature_help()<CR>", { buffer = args.buf })
    end
  end,
})
