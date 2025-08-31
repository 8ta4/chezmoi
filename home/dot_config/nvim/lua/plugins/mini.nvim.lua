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
			-- mini.clue doesn't work inside VSCode.
			-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-clue.md?plain=1#L92-L135
			local miniclue = require("mini.clue")
			miniclue.setup({
				triggers = {
					-- Leader triggers
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },

					-- `g` key
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },

					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- `z` key
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },
				},

				clues = {
					-- Enhance this by adding descriptions for <Leader> mapping groups
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
				},
			})
			-- mini.pairs is redundant inside VSCode because VSCode already handles auto-pairing.
			-- https://github.com/nvim-mini/mini.nvim/blob/ddb70da6ec6aa896cfde87350d1e8dffb57ddef0/readmes/mini-pairs.md?plain=1#L126
			require("mini.pairs").setup()
		end
	end,
	version = "*",
}
