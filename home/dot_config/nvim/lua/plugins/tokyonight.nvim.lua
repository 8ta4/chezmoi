-- https://github.com/folke/tokyonight.nvim/blob/0c68bc3876897613110a2f71340f2dc760c9c761/README.md?plain=1#L184-L189
return {
	"folke/tokyonight.nvim",
	-- tokyonight.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	config = function()
		-- https://github.com/folke/tokyonight.nvim/blob/0c68bc3876897613110a2f71340f2dc760c9c761/README.md?plain=1#L195C1-L195C34
		vim.cmd([[colorscheme tokyonight]])
	end,
	lazy = false,
	opts = {},
	priority = 1000,
}
