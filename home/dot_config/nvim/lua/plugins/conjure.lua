-- https://github.com/Olical/conjure/blob/23718a259a03be9d72a05bef6d76bea789e46b5c/README.adoc?plain=1#L100
return {
	"Olical/conjure",
	-- conjure doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
}
