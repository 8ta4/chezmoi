return {
	"stevearc/conform.nvim",
	-- conform.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
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
