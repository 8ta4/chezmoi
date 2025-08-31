-- https://github.com/kylechui/nvim-surround/blob/a868c256c861044beb9794b4dd126480dcdfbdad/README.md?plain=1#L40-L49
return {
	"kylechui/nvim-surround",
	version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}
