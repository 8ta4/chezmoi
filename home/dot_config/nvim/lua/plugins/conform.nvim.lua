return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			fennel = { "fnlfmt" },
		},
	},
	keys = {
		{
			"<A-F>",
			function()
				require("conform").format()
			end,
			mode = { "i", "n", "x" },
		},
	},
}
