return {
	"mbbill/undotree",
	-- undotree doesn't work inside Visual Studio Code.
	enabled = not vim.g.vscode,
	keys = {
		-- https://github.com/mbbill/undotree/blob/fe9a9d0645f0f5532360b5e5f5c550d7bb4f1869/README.md?plain=1#L80
		{ "<leader><F5>", vim.cmd.UndotreeToggle },
	},
}
