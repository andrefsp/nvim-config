-- enable numbers
vim.cmd.set("number")

-- when spliting windows, split to the right pane.
vim.cmd.set("splitright")

-- remove background color to it keeps terminal settings
vim.cmd.highlight("Normal ctermbg=NONE guibg=NONE")
vim.cmd.highlight("NonText ctermbg=NONE guibg=NONE")
vim.cmd.highlight("LineNr ctermbg=NONE guibg=NONE")

vim.opt.tabstop = 2 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2 -- Number of spaces for auto-indent
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- lazy.vim installation and configuration
require("config.lazy")

---- render-markdown.nvim(https://github.com/MeanderingProgrammer/render-markdown.nvim) plugin
require("config.rendermarkdown")

-- code companion(https://github.com/olimorris/codecompanion.nvim) plugin configuration
require("config.codecompanion")

-- lualine plugin (https://github.com/nvim-lualine/lualine.nvim) configuration.
require("config.lualine")

-- nvim-treesitter(https://github.com/nvim-treesitter/nvim-treesitter) plugin configuration
require("config.treesitter")

-- https://github.com/neovim/nvim-lspconfig
-- https://neovim.io/doc/user/lsp.html
require("config.lsp")

-- https://github.com/mason-org/mason.nvim
require("config.mason")

-- https://github.com/stevearc/conform.nvim
require("config.conform")

-- colorschemes plugins
--
-- https://github.com/rebelot/kanagawa.nvim
require("colorschemes.kanagawa")

-- https://github.com/EdenEast/nightfox.nvim
require("colorschemes.nightfox")

-- keymap settings
require("config.keymaps")

-- set color scheme theme
--vim.cmd.colorscheme("nightfox")
vim.cmd.colorscheme("kanagawa")
