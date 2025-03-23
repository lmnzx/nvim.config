return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		ft = "markdown",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			completions = { blink = { enabled = true } },
			code = {
				sign = false,
				width = "block",
				right_pad = 1,
				style = "normal",
			},
			heading = {
				sign = false,
				position = "inline",
				icons = {},
			},
		},
	},
}
