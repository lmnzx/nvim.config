return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.icons").setup(require("mini.statusline").setup({
				content = {
					active = function()
						local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
						local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
						local filename = MiniStatusline.section_filename({ trunc_width = 140 })
						local location = string.format("%d:%d", vim.fn.line("."), vim.fn.line("$"))

						return MiniStatusline.combine_groups({
							{ hl = mode_hl, strings = { mode } },
							{ hl = "MiniStatuslineDevinfo", strings = { diagnostics } },
							"%<",
							{ hl = "MiniStatuslineFilename", strings = { filename } },
							"%=",
							{ hl = mode_hl, strings = { location } },
						})
					end,

					inactive = function()
						local filename = MiniStatusline.section_filename({ trunc_width = 140 })

						return MiniStatusline.combine_groups({
							{ hl = "MiniStatuslineInactive", strings = { filename } },
						})
					end,
				},
				use_icons = false,
			}))
			require("mini.git").setup()
			require("mini.diff").setup({
				view = {
					signs = {
						add = "+",
						change = "~",
						delete = "-",
					},
				},
			})
			require("mini.pairs").setup()
			require("mini.comment").setup()
		end,
	},
}
