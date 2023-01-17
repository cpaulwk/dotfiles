local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()
lsp.ensure_installed({
  'tsserver',
})

-- LSP actions
vim.keymap.set("n", "<leader>dj", "<Cmd>lua vim.diagnostic.goto_next()<CR>")  
vim.keymap.set("n", "<leader>dk", "<Cmd>lua vim.diagnostic.goto_prev()<CR>")  
vim.keymap.set("n", "<leader>r", "<Cmd>lua vim.lsp.buf.rename()<CR>")         
vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")            
vim.keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "=g", "<Cmd>lua vim.lsp.buf.formatting()<CR>")             

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})
