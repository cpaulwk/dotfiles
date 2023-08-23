vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 3

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.foldmethod = "indent"

vim.opt.foldlevelstart = 99

-- Open other buffers without saving current one
vim.opt.hidden = true

vim.g.mapleader = " "
