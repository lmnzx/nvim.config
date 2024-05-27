return {
	{
		"j-hui/fidget.nvim",
		event = { "BufEnter" },
		config = function()
			require("fidget").setup({})
		end,
	},
}
