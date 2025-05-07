return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			overrides = {
				buftype = {
					nofile = { enabled = false },
				},
			},
			completions = { blink = { enabled = true } },
			code = {
				sign = false,
				disable_background = true,
				language_icon = false,
				language_name = false,
			},
			heading = {
				sign = false,
				position = "inline",
			},
		},
	},
}
