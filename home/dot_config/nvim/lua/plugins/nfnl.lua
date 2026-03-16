-- https://github.com/Olical/nfnl/blob/f39a7ec6fe0ace2b2ea108ce04d954549e36c76d/README.md?plain=1#L174
return {
	"Olical/nfnl",
	-- nfnl doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	ft = "fennel",
}
