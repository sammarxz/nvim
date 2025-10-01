return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"javascript",
			"typescript",
			"tsx",
			"python",
			"json",
			"yaml",
			"html",
			"css",
		},
		highlight = { enable = true },
		indent = { enable = true },
		autotag = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
