local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	defaults = {
		lazy = false,
	},
	-- install = {
	-- colorscheme = { "onelight" }
	-- },
	rtp = {
		disabled_plugins = {
			"netrw",
			"netrwPlugin",
		},
	},
}

require("config.globals")
require("config.options")
require("config.keymaps")

require("lazy").setup("plugins", opts)
vim.cmd("colorscheme nightfox") -- vscode_modern, carbonfox, onedark, visual_studio_code
