return {
	"mrjones2014/smart-splits.nvim",
	-- smart-splits.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
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
	opts = {
		-- https://github.com/mrjones2014/smart-splits.nvim/blob/25bf40abf79720ebfa98e09259b7c42942055f4c/lua/smart-splits/api.lua#L398-L410
		at_edge = function(ctx)
			local direction = ({
				left = "west",
				right = "east",
				up = "north",
				down = "south",
			})[ctx.direction]
			vim.fn.system("yabai -m window --focus " .. direction .. " || yabai -m display --focus " .. direction)
		end,
	},
}
