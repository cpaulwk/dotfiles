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
vim.keymap.set("n", "<C-K>", "<Cmd>bn<bar>bd! #<CR>")

-- Pick lines and move them Up or Down
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv")

-- Paste and rewrite from the same expression
vim.keymap.set("x", "<leader>p", '"_dP')

-- Yank/ Copy to the system clipboard
vim.keymap.set("n", "<leader>y", '"*y')
vim.keymap.set("v", "<leader>y", '"*y')
vim.keymap.set("n", "<leader>Y", '"*Y')

-- Paste from the system clipboard
vim.keymap.set("n", "<leader>p", '"*p')
vim.keymap.set("v", "<leader>p", '"*p')
vim.keymap.set("n", "<leader>p", '"*P')

-- Delete without and put rewritten expression to the void register
--vim.keymap.set("n", "<leader>d", "\"_d")
--vim.keymap.set("v", "<leader>d", "\"_d")

-- Fugitive Remap
vim.keymap.set("n", "<leader>g", "<Cmd>vertical Git<bar>%bd!<bar>b#<CR>")

--Coc Explorer Remap
vim.keymap.set("n", "<leader>e", "<Cmd>CocCommand explorer --preset floating<CR>")

-- Blamer Remap
vim.keymap.set("n", "<leader>b", "<Cmd>BlamerToggle<CR>")

-- Gvdiff Remap
vim.keymap.set("n", "<leader>d", "<Cmd>Gvdiff<CR>")

-- LSP Remap
vim.keymap.set("n", "<leader>j", "<Cmd>lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "<leader>k", "<Cmd>lua vim.diagnostic.goto_prev()<CR>")
vim.keymap.set("n", "<leader>r", "<Cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "=g", "<Cmd>lua vim.lsp.buf.formatting()<CR>")

-- Codeium Remap
vim.g.codeium_disable_bindings = 1
vim.keymap.set("i", "<C-l>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
vim.keymap.set("i", "<C-j>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
vim.keymap.set("i", "<C-k>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
vim.keymap.set("i", "<C-h>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true })
