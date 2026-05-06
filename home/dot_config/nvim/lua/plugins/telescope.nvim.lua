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
			"<leader>f/",
			-- https://github.com/nvim-telescope/telescope.nvim/issues/3503#issuecomment-3085977386:~:text=%7B%20%27%3Cleader%3Etf%27%2C%20function()%20require(%27telescope.builtin%27).find_files()%20end%2C%20mode%20%3D%20%27n%27%2C%20desc%20%3D%20%27Find%20files%27%20%7D%2C
			function()
				require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			desc = "Telescope find lines",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope find files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope live grep",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope help tags",
		},
		{
			"<leader>fr",
			function()
				require("telescope.builtin").resume()
			end,
			desc = "Telescope resume search",
		},
	},
	-- Configure Telescope to include hidden files in searches
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
