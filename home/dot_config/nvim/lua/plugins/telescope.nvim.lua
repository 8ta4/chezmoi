-- https://github.com/nvim-telescope/telescope.nvim/blob/b4da76be54691e854d3e0e02c36b0245f945c2c7/README.md?plain=1#L121-L125
return {
	"nvim-telescope/telescope.nvim",
	-- telescope.nvim doesn't work inside Visual Studio Code.
	-- https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins/996cac1464fe73750faee0ea4ad51577410e66f0#:~:text=cond%20%3D%20(function()%20return%20not%20vim.g.vscode%20end)
	cond = function()
		return not vim.g.vscode
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
	-- https://github.com/nvim-telescope/telescope.nvim/blob/b4da76be54691e854d3e0e02c36b0245f945c2c7/README.md?plain=1#L160-L164
	keys = {
		{
			"<leader>ff",
			require("telescope.builtin").find_files,
			desc = "Telescope find files",
		},
		{
			"<leader>fg",
			require("telescope.builtin").live_grep,
			desc = "Telescope live grep",
		},
		{
			"<leader>fb",
			require("telescope.builtin").buffers,
			desc = "Telescope buffers",
		},
		{
			"<leader>fh",
			require("telescope.builtin").help_tags,
			desc = "Telescope help tags",
		},
	},
	opts = {
		pickers = {
			find_files = {
				find_command = { "fd", "-E", ".git", "-H", "-t", "f" },
			},
			live_grep = {
				additional_args = { "-.", "-g", "!.git" },
			},
		},
	},
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
}
