return {
	-- Tema
	{
		"everviolet/nvim",
		name = "evergarden",
		lazy = false,
		priority = 1000,
		opts = {
			theme = { variant = "winter", accent = "green" },
			editor = {
				transparent_background = false,
				sign = { color = "none" },
				float = {
					color = "mantle",
					solid_border = false,
				},
				completion = { color = "surface0" },
			},
		},
		config = function(_, opts)
			require("evergarden").setup(opts)
			vim.cmd.colorscheme("evergarden")
		end,
	},

	-- Indentação visual
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = { "BufReadPost", "BufNewFile" },
		opts = { indent = { char = "│" } },
	},

	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},

	-- Clipboard OSC52
	{ "ojroques/nvim-osc52", event = "VeryLazy" },
}
