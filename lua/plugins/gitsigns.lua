return {
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup({
				signs = {
				    add          = { text = '+' },
				    change       = { text = '~' },
				    delete       = { text = '_' },
				    topdelete    = { text = '‾' },
				    changedelete = { text = '~' },
				    untracked    = { text = '|' },
  				},
				signcolumn = true, 
				current_line_blame = true,
			})
		end,
	},
}
