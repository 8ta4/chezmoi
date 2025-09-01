-- https://github.com/folke/tokyonight.nvim/blob/0c68bc3876897613110a2f71340f2dc760c9c761/README.md?plain=1#L184-L189
return {
	"folke/tokyonight.nvim",
	config = function()
		-- https://github.com/folke/tokyonight.nvim/blob/0c68bc3876897613110a2f71340f2dc760c9c761/README.md?plain=1#L195C1-L195C34
		vim.cmd([[colorscheme tokyonight]])
	end,
	-- tokyonight.nvim doesn't work inside Visual Studio Code.
	enabled = not vim.g.vscode,
	lazy = false,
	opts = {},
	priority = 1000,
}
