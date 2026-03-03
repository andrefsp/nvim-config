-- # Fzf
-- :FzfLua git_files
vim.keymap.set("n", "<leader>fg", function()
	vim.cmd("FzfLua git_files")
end, { desc = "FzfLua git files" })

-- :FzfLua git_blame
vim.keymap.set("n", "<leader>fb", function()
	vim.cmd("FzfLua git_blame")
end, { desc = "FzfLua git blame" })

-- LSP key
-- Go to definition
vim.keymap.set("n", "grd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "LSP: Rename" })

-- # LSP  https://neovim.io/doc/user/lsp.html#i_CTRL-S
--  These GLOBAL keymaps are created unconditionally when Nvim starts:
--  "gra" (Normal and Visual mode) is mapped to vim.lsp.buf.code_action()
--  "gri" is mapped to vim.lsp.buf.implementation()
--  "grn" is mapped to vim.lsp.buf.rename()
--  "grr" is mapped to vim.lsp.buf.references()
--  "grt" is mapped to vim.lsp.buf.type_definition()
--  "gO" is mapped to vim.lsp.buf.document_symbol()
--  breakCTRL-S (Insert mode) is mapped to vim.lsp.buf.signature_help()
--  "an" and "in" (Visual and Operator-pending mode) are mapped to outer and inner incremental selections, respectively, using vim.lsp.buf.selection_range()
--

-- Paste in visual mode without yanking the replaced text.
-- Sends the replaced text to the black hole register ("_) so the original
-- yank is preserved, allowing multiple paste-overs.
vim.keymap.set("x", "p", '"_dP', { noremap = true, silent = true, desc = "Paste without yanking replaced text" })
