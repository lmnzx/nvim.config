return {
	{
		"mfussenegger/nvim-dap",
		lazy = true,
		keys = {
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
			},

			{
				"<leader>dc",
				function()
					require("dap").continue()
				end,
			},

			{
				"<leader>dC",
				function()
					require("dap").run_to_cursor()
				end,
			},

			{
				"<leader>dT",
				function()
					require("dap").terminate()
				end,
			},
		},
	},
	{
		"leoluz/nvim-dap-go",
		config = true,
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		keys = {
			{
				"<leader>dt",
				function()
					require("dap-go").debug_test()
				end,
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = true,
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		config = true,
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle({})
				end,
				desc = "Dap UI",
			},
		},
		dependencies = {
			"jay-babu/mason-nvim-dap.nvim",
			"leoluz/nvim-dap-go",
			"mfussenegger/nvim-dap-python",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
		},
	},
}
