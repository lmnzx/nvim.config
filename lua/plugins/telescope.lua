return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
	},

	config = function()
		require("telescope").load_extension("fzf")
		require("telescope").setup({
			extensions = {
				fzf = {},
			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
		keymap.set("n", "<leader>ht", require("telescope.builtin").help_tags)
		keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep)
		keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics)
	end,
}
