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
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				mapppings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-x>"] = actions.delete_buffer,
					},
				},
			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
		keymap.set("n", "<leader>ht", require("telescope.builtin").help_tags)
		keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep)
		keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics)
	end,
}
