vim.cmd("set autoindent")
vim.cmd("set scrolloff=12")
vim.cmd("set si")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
--vim.cmd("au BufWrite * :Autoformat")
vim.api.nvim_set_option("clipboard","unnamed")
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.g.editorconfig = true
