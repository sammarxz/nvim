local opt = vim.opt

-- Exibição
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Mouse e Clipboard
opt.mouse = "a"
vim.g.clipboard = "osc52"

-- Arquivos
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Busca
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Visual
opt.termguicolors = true
opt.updatetime = 300

-- Indentação
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
