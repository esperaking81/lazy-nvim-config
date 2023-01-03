local M = {
    "Pocco81/True-Zen.nvim"
}

function M.init()
    vim.keymap.set("n", "<leader>ta", ":TZAtaraxis")
end

function M.config()
    require("true-zen").setup()
end

return M
