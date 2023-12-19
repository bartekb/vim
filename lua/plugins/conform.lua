return {
	"stevearc/conform.nvim",
	event = "InsertEnter",
	opts = {},
	config = function(_, opts)
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
			},
		})
	end,
}
