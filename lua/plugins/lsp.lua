return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "hrsh7th/cmp-nvim-lsp" },
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local function get_root_dir(fname)
			return vim.fs.root(fname, {
				".git",
				"pyproject.toml",
				"package.json",
				"setup.py",
			})
		end

		-- Pyright (Python)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "python",
			callback = function()
				vim.lsp.start({
					name = "pyright",
					cmd = { "pyright-langserver", "--stdio" },
					capabilities = capabilities,
					root_dir = get_root_dir(vim.api.nvim_buf_get_name(0)),
				})
			end,
		})

		-- ts_ls (TypeScript/JavaScript)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
			callback = function()
				vim.lsp.start({
					name = "ts_ls",
					cmd = { "typescript-language-server", "--stdio" },
					capabilities = capabilities,
					root_dir = get_root_dir(vim.api.nvim_buf_get_name(0)),
				})
			end,
		})
	end,
}
