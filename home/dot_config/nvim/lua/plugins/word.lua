local base =
	" Use correct grammar. Check if the sentence meets these requirements. Explain any failures. Give two rewrites of the sentence."

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
			{ name = "casual", prompt = "Use a casual tone." .. base },
			{ name = "formal", prompt = "Use a formal tone." .. base },
		},
	},
}
