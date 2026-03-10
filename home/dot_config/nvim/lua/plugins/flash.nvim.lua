local threshold = 10000
-- https://github.com/folke/flash.nvim/blob/54b70a91b1d116fffe974d69dae05a32c74b0ab0/README.md?plain=1#L64-L77
-- https://github.com/vscode-neovim/vscode-neovim/discussions/2514#discussioncomment-15131078
return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {
		-- https://github.com/folke/flash.nvim/blob/d83258c1e4d9da970db424a95464ee5595a0945b/README.md?plain=1#L120-L129
		search = {
			exclude = {
				"notify",
				"cmp_menu",
				"noice",
				"flash_prompt",
				function(win)
					-- exclude non-focusable windows
					return not vim.api.nvim_win_get_config(win).focusable
						-- flash.nvim can be noticeably slow on large files.
						or vim.api.nvim_buf_line_count(vim.api.nvim_win_get_buf(win)) > threshold
				end,
			},
		},
		modes = {
			search = {
				enabled = true,
			},
		},
	},
	-- stylua: ignore
	-- I am disabling the default keys provided by flash.nvim for several reasons:
	-- - `s`, `S`, and `R` conflict with built-in Neovim keymaps.
	-- - I don't use the Treesitter integration, so the `S` and `R` keys are not needed.
	-- - My workflow for remote operations doesn't require the `r` key. I prefer to manually jump to a location, perform an action, and then use the jumplist to return.
	-- - I don't need to toggle flash search on and off, so `<c-s>` is unnecessary.
	-- keys = {
	--   { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
	--   { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
	--   { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
	--   { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
	--   { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
	-- },
}
