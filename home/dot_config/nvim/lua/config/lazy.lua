-- https://lazy.folke.io/installation
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- https://github.com/NvChad/nvchad.github.io/blob/e91c729e86b0b34aabb7d3c91e1e4c4bff6ac035/src/routes/docs/recipes.mdx?plain=1#L61-L76
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		local line = vim.fn.line("'\"")
		if
			line > 1
			and line <= vim.fn.line("$")
			and vim.bo.filetype ~= "commit"
			and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
		then
			vim.cmd('normal! g`"')
		end
	end,
})

-- https://github.com/neovim/neovim/issues/5683#issuecomment-886417209
vim.cmd("lang en_US.UTF-8")

-- https://github.com/LunarVim/LunarVim/issues/1857#issuecomment-1013641928
vim.keymap.set("n", "<M-j>", "j", { noremap = true })
vim.keymap.set("n", "<M-k>", "k", { noremap = true })

-- https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
vim.opt.clipboard = "unnamed,unnamedplus"
-- https://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim/2288438#2288438:~:text=%3Aset%20ignorecase%0A%3Aset%20smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.relativenumber = true

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
