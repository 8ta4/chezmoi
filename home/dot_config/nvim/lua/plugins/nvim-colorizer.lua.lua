return {
	"norcalli/nvim-colorizer.lua",
	-- nvim-colorizer.lua doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	config = function()
		-- https://github.com/norcalli/nvim-colorizer.lua/blob/174b7a67ce384318f7500e0d256322e1cbba5e5b/README.md?plain=1#L30
		require("colorizer").setup()
	end,
}
