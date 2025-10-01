return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<leader>t", desc = "Toggle terminal" },
	},
	opts = {
		-- Tamanho do terminal
		size = function(term)
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,

		-- Abrir em modo flutuante
		direction = "float",

		-- Configurações do float
		float_opts = {
			border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
			width = math.floor(vim.o.columns * 0.8),
			height = math.floor(vim.o.lines * 0.8),
			winblend = 0,
		},

		-- Opções gerais
		open_mapping = [[<leader>t]], -- Atalho para toggle
		hide_numbers = true,
		shade_terminals = true,
		start_in_insert = true,
		insert_mappings = true, -- Usar o atalho também no insert mode
		terminal_mappings = true,
		persist_size = true,
		persist_mode = true,
		close_on_exit = true,
		shell = vim.o.shell,

		-- Atalhos dentro do terminal
		on_open = function(term)
			vim.cmd("startinsert!")
			-- Mapeamentos específicos do terminal
			vim.api.nvim_buf_set_keymap(
				term.bufnr,
				"t",
				"<C-h>",
				[[<C-\><C-n><C-W>h]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(
				term.bufnr,
				"t",
				"<C-j>",
				[[<C-\><C-n><C-W>j]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(
				term.bufnr,
				"t",
				"<C-k>",
				[[<C-\><C-n><C-W>k]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(
				term.bufnr,
				"t",
				"<C-l>",
				[[<C-\><C-n><C-W>l]],
				{ noremap = true, silent = true }
			)
		end,
	},
}
