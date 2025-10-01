-- Define leader key ANTES de carregar plugins
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Bootstrap e setup do lazy.nvim
require("config.lazy")

-- Carregar configurações básicas
require("config.options")
require("config.keymaps")
