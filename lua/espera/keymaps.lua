vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Exit insert mode with jj
keymap("i", "jj", "<ESC>")

-- Open netrw
keymap("n", "<leader>pv", ":Ex<cr>")

-- Window management
keymap("n", "te", ":tabedit<cr>")
-- Split window
keymap("n", "ss", ":split<Return><c-w>w")
keymap("n", "sv", ":vsplit<Return><c-w>w")
-- Moving through windows
keymap('', "sh", "<C-w>h")
keymap('', "sj", "<C-w>j")
keymap('', "sk", "<C-w>k")
keymap('', "sl", "<C-w>l")
-- Resize windows
keymap('n', "<C-w><left>", "<C-w><")
keymap('n', "<C-w><right>", "<C-w>>")
keymap('n', "<C-w><up>", "<C-w>+")
keymap('n', "<C-w><down>", "<C-w>-")

-- from ThePrimeagen
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
