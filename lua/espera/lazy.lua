local opts = {
    install = { colorscheme = { "noirbuddy" } }
}
require("lazy").setup("espera.plugins", opts)

vim.keymap.set("n", "<leader>l", ":Lazy<cr>")
