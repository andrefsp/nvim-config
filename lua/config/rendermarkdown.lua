require('render-markdown').setup({
	code = {
		-- Turn on / off code block & inline code rendering.
		enabled = true,
		style = 'full',
	},
	anti_conceal = {
		-- This enables hiding added text on the line the cursor is on.
		enabled = false,
	}
})
