local opt = vim.opt
local keymap = vim.keymap
-- window stuff
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
-- setting clipboard to system clipboard
opt.clipboard = "unnamedplus"
-- keymaps
keymap.set("n", "<leader>w", ":w<CR>", {desc = "Save"})
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>;", ":Alpha<CR>", {desc = "Dashboard"})

-- splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- buffers
-- keymap.set("n", "<leader>bo", "<cmd>tabnew<CR>", { desc = "Open new buffer" }) -- open new tab
keymap.set("n", "<leader>bx", "<cmd>BufferClose<CR>", { desc = "Close current buffer" }) -- close current tab
keymap.set("n", "<M-0>", "<cmd>BufferNext<CR>", { desc = "Go to next buffer" }) --  go to next tab
keymap.set("n", "<M-9>", "<cmd>BufferPrevious<CR>", { desc = "Go to previous buffer" }) --  go to previous tab
keymap.set("n", "<leader>bf", "<cmd>enew | put =getline(1,'$')<CR>", { desc = "Open current buffer in new buffer" })
-- keymap.set("n", "<leader>bf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

opt.wrap = false
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"

opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false

-- line numbers
opt.relativenumber = true
opt.number = true

-- undos persist
vim.opt.undodir = vim.fn.expand('~/nvim_undo')
vim.opt.undofile = true
