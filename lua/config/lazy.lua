-- Bootstrap do lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup dos plugins
require("lazy").setup("plugins", {
	ui = {
		icons = {
			ft = "",
			lazy = "󰂠 ",
			loaded = "",
			not_loaded = "",
		},
	},
	change_detection = { notify = false },
})
