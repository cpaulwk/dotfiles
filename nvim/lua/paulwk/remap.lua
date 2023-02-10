vim.g.mapleader = " "

-- Quick fixes
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "L", "Ljjj")
vim.keymap.set("n", "H", "Hkkk")
vim.keymap.set("n", "=G", "=Gzz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-w>>", "<C-w>100>")
vim.keymap.set("n", "<C-w><", "<C-w>100<")
vim.keymap.set("n", "<CR>", "<Cmd>b#<CR>")
vim.keymap.set("n", "<C-j>", "i<CR><Esc>")
vim.keymap.set("n", "<C-l>", "<Cmd>bn<CR>")
vim.keymap.set("n", "<C-h>", "<Cmd>bp<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>bn<bar>bd#<CR>")


-- Pick lines and move them Up or Down
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv")

-- Paste and rewrite from the same expression
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank/ Copy to the system clipboard
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>Y", "\"*Y")

-- Delete without and put rewritten expression to the void register
--vim.keymap.set("n", "<leader>d", "\"_d")
--vim.keymap.set("v", "<leader>d", "\"_d")

-- Fugitive Remap
vim.keymap.set("n", "<leader>g", "<Cmd>vertical Git<bar>%bd!<bar>b#<CR>")

--Coc Explorer Remap
vim.keymap.set("n", "<leader>e", "<Cmd>CocCommand explorer --preset floating<CR>")

-- Blamer Remap
vim.keymap.set("n", "<leader>b", "<Cmd>BlamerToggle<CR>")
--
--Gvdiff Remap
vim.keymap.set("n", "<leader>d", "<Cmd>Gvdiff<CR>")
