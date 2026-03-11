-- https://github.com/stevearc/oil.nvim/blob/0fcc83805ad11cf714a949c98c605ed717e0b83e/README.md?plain=1#L36-L46
return {
	"stevearc/oil.nvim",
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
