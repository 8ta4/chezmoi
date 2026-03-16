-- https://github.com/ray-x/lsp_signature.nvim/blob/0efb088dce050d38a3608ee69f80f2a62cf9849c/README.md?plain=1#L62-L68
return {
	"ray-x/lsp_signature.nvim",
	-- lsp_signature.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	event = "InsertEnter",
	opts = {
		-- cfg options
	},
}
