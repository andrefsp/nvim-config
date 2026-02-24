require("codecompanion").setup({
	interactions = {
		chat = {
			adapter = "gemini_cli",
		},
		inline = {
			adapter = "gemini_cli",
		},
		cmd = {
			adapter = "gemini_cli",
		},
	},
	display = {
		action_palette = {
			width = 95,
			height = 10,
			provider = "fzf_lua",
			opts = {
				show_preset_actions = true, -- Show the preset actions in the action palette?
				show_preset_prompts = true, -- Show the preset prompts in the action palette?
				title = "Code Companion",
			},
		},
		inline = {
			layout = "vertical", -- vertical|horizontal|buffer
		},
	},
	opts = {
		log_level = "DEBUG", -- or "TRACE"
	},
	adapters = {
		acp = {
			gemini_cli = function()
				return require("codecompanion.adapters").extend("gemini_cli", {
					defaults = {
						auth_method = "oauth-personal", -- "oauth-personal"|"gemini-api-key"|"vertex-ai"
						timeout = 20000, -- 20s
					},
					env = {
						GOOGLE_CLOUD_PROJECT = "dp-eng-productivity",
					},
				})
			end,
			--mistral_vibe = {

			--},
		},
	},
})
