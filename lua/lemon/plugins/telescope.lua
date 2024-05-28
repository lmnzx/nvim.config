return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
				cond = vim.fn.executable("cmake") == 1,
			},
			"folke/todo-comments.nvim",
		},
		config = function()
			local actions = require("telescope.actions")

			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
							results_width = 0.8,
						},
						vertical = {
							mirror = false,
						},
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
							["<C-x>"] = actions.delete_buffer,
						},
					},
					file_ignore_patterns = {
						"node_modules",
						"yarn.lock",
						".git",
						".sl",
						"_build",
						"_opam",
						".next",
					},
					hidden = true,
				},
			})

			pcall(require("telescope").load_extension, "fzf")

			local function telescope_live_grep_open_files()
				require("telescope.builtin").live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end

			local keymap = vim.keymap

			keymap.set("n", "<leader>s/", telescope_live_grep_open_files)
			keymap.set("n", "<leader>ss", require("telescope.builtin").builtin)
			keymap.set("n", "<leader>gf", require("telescope.builtin").git_files)
			keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
			keymap.set("n", "<leader>th", require("telescope.builtin").help_tags)
			keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string)
			keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep)
			keymap.set("n", "<leader>sG", ":LiveGrepGitRoot<cr>")
			keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics)
			keymap.set("n", "<leader>sr", require("telescope.builtin").resume)
			keymap.set("n", "<leader>b", require("telescope.builtin").buffers)
			keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")
		end,
	},
}
