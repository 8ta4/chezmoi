return {
	"mrjones2014/smart-splits.nvim",
	cond = function()
		return not vim.g.vscode
	end,
	keys = {
		{
			"<A-h>",
			function()
				require("smart-splits").move_cursor_left()
			end,
		},
		{
			"<A-j>",
			function()
				require("smart-splits").move_cursor_down()
			end,
		},
		{
			"<A-k>",
			function()
				require("smart-splits").move_cursor_up()
			end,
		},
		{
			"<A-l>",
			function()
				require("smart-splits").move_cursor_right()
			end,
		},
	},
	-- https://github.com/mrjones2014/smart-splits.nvim/blob/25bf40abf79720ebfa98e09259b7c42942055f4c/README.md?plain=1#L236-L237
	lazy = false,
}
