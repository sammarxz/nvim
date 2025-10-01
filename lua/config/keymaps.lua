local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Copiar para clipboard do sistema
map("v", "Y", '"+y', opts)

-- Salvar e Sair
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opts)
map("n", "<C-f>", ":Telescope live_grep<CR>", opts)

-- Navegação entre buffers
map("n", "<S-h>", ":bprevious<CR>", opts)
map("n", "<S-l>", ":bnext<CR>", opts)

-- Mover linhas (visual mode)
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Melhor indentação (mantém seleção)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
