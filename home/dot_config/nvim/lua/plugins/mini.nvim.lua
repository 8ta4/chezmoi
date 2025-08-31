-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/README.md?plain=1#L54
return {
	"nvim-mini/mini.nvim",
	config = function()
		-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-ai.md?plain=1#L145
		require("mini.ai").setup()
		-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-align.md?plain=1#L142
		require("mini.align").setup()
		-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-bracketed.md?plain=1#L160
		require("mini.bracketed").setup()
		-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-operators.md?plain=1#L136
		require("mini.operators").setup()
		if not vim.g.vscode then
			-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-pairs.md?plain=1#L126
			require("mini.pairs").setup()
		end
	end,
	version = "*",
}
