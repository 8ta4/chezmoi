return {
	"mbbill/undotree",
	-- undotree doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	keys = {
		-- https://github.com/mbbill/undotree/blob/fe9a9d0645f0f5532360b5e5f5c550d7bb4f1869/README.md?plain=1#L80
		{ "<leader><F5>", vim.cmd.UndotreeToggle },
	},
}
