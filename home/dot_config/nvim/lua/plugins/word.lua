local base = "Check if the sentence is grammatically correct. Explain any errors. "

return {
	"8ta4/word",
	build = "./install.sh",
	-- word doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	dependencies = {
		"8ta4/sentence",
		build = "./install.sh",
	},
	keys = {
		{
			"<M-w>1",
			function()
				require("word").style(1)
			end,
			mode = { "i", "n", "x" },
		},
		{
			"<M-w>2",
			function()
				require("word").style(2)
			end,
			mode = { "i", "n", "x" },
		},
		{
			"<M-w>f",
			function()
				require("word").suggest()
			end,
			mode = { "i", "n", "x" },
		},
		{
			"<M-w>j",
			function()
				require("word").apply(2)
			end,
			mode = { "i", "n", "x" },
		},
		{
			"<M-w>k",
			function()
				require("word").apply(1)
			end,
			mode = { "i", "n", "x" },
		},
	},
	opts = {
		styles = {
			{ name = "casual", prompt = base .. "Give two casual rewrites, keeping markup." },
			{ name = "formal", prompt = base .. "Give two formal rewrites, keeping markup." },
		},
	},
}
