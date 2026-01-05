return {
	"preservim/vim-textobj-sentence",
	-- https://github.com/preservim/vim-textobj-sentence/blob/a7b58aafa10f628334a338434f4c7530d4382bbd/README.markdown?plain=1#L32-L34
	dependencies = { "kana/vim-textobj-user" },
	ft = { "markdown", "text" },
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			command = "call textobj#sentence#init()",
			pattern = { "markdown", "text" },
		})
	end,
}
