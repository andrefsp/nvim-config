-- GoTo code navigation
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Symbol renaming
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)', { silent = true })


-- Use <c(ctrl)-j> to trigger snippets
vim.keymap.set('i', '<c-j>', '<Plug>(coc-snippets-expand-jump)')

-- Use <c(ctrl)-space> to trigger completion
vim.keymap.set('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })


-- Install the LSPs for languages.
--
-- CocInstall coc-rust-analyzer
-- CocInstall coc-go
-- CocInstall coc-pyright
-- CocInstall coc-clangd
-- CocInstall coc-java

vim.cmd([[
  let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-go', 'coc-pyright', 'coc-clangd', 'coc-rust-analyzer', 'coc-java', 'coc-json', 'coc-python']
]])
