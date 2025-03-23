return {
	-- LSP configuration
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{
				"j-hui/fidget.nvim",
				opts = {
					notification = {
						window = {
							winblend = 0,
						},
					},
					progress = {
						display = {
							progress_icon = { "dots_negative" },
						},
					},
				},
			},
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			require("lspconfig").lua_ls.setup({ capabilities = capabilities })
			require("lspconfig").clangd.setup({ capabilities = capabilities })
			require("lspconfig").ocamllsp.setup({ capabilities = capabilities })
			require("lspconfig").pyright.setup({ capabilities = capabilities })
			require("lspconfig").gopls.setup({ capabilities = capabilities })
			require("lspconfig").ols.setup({ capabilities = capabilities })
			require("lspconfig").ts_ls.setup({ capabilities = capabilities })
			require("lspconfig").rust_analyzer.setup({ capabilities = capabilities })
		end,
	},

	-- lspsaga
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"echasnovski/mini.icons",
		},
		config = function()
			require("lspsaga").setup({
				lightbulb = {
					enable = false,
				},
			})
		end,
	},

	-- Blink.cmp completion
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",
		opts = {
			keymap = { preset = "default" },
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},

	-- Conform.nvim for autoformatting
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				ocaml = { "ocamlfmt" },
				python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
				go = { "goimports", "gofmt" },
				odin = { "odinfmt" },
				typescript = { "biome" },
				rust = { "rustfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
}
