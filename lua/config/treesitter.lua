require('nvim-treesitter.configs').setup({
	ensure_installed = {
		"go",
		"python",
		"html",
		"javascript",
		"typescript",
		"bash",
		"yaml",
		"json",
		"markdown",
		"markdown_inline",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	}
})
