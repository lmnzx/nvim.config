return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				ocaml = { "ocamlformat" },
				-- reason = { "ocamformat" },
				cpp = { "clang-format" },
				c = { "clang-format" },
				toml = { "taplo" },
				-- go = { "gofumpt", "goimports_reviser", "golines" },
				proto = { "buf" },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_fallback = true,
			},
		})
	end,
}
