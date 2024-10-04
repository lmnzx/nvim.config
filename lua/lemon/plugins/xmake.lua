return {
	"Mythos-404/xmake.nvim",
	lazy = true,
	event = "BufReadPost xmake.lua",
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	config = {
		compile_command = {
			lsp = "clangd",
			dir = ".",
		},
	},
}
