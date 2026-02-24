require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "flake8" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
		-- go
		go = { "gofumpt", "goimports" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 1500,
		lsp_format = "fallback",
	},
})
