local base = "Check if the sentence is grammatically correct. Explain any errors. Keep the formatting. "

return {
	"8ta4/word",
	build = "./install.sh",
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
			{ name = "casual", prompt = base .. "Give two casual rewrites." },
			{ name = "formal", prompt = base .. "Give two formal rewrites." },
		},
	},
}
