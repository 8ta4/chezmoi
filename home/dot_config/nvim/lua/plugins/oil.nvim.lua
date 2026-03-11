-- https://github.com/stevearc/oil.nvim/blob/0fcc83805ad11cf714a949c98c605ed717e0b83e/README.md?plain=1#L36-L46
return {
	"stevearc/oil.nvim",
	-- oil.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	keys = {
		-- https://github.com/stevearc/oil.nvim/blob/0fcc83805ad11cf714a949c98c605ed717e0b83e/README.md?plain=1#L128
		{ "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
	},
	lazy = false,
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
}
