-- https://github.com/lukas-reineke/indent-blankline.nvim/blob/d28a3f70721c79e3c5f6693057ae929f3d9c0a03/README.md?plain=1#L17-L23
return {
	"lukas-reineke/indent-blankline.nvim",
	-- indent-blankline.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
}
