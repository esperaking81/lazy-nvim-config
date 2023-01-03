local M = {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0"
}

function M.init()
    local opts = { silent = true }
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
    vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
    vim.keymap.set('n', '<leader>fp', ":Telescope projects<cr>", opts)
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
    vim.keymap.set('n', '<leader>fd', ":Telescope diagnostics<cr>", opts)
end

function M.config()
    local telescope = require("telescope")
    local actions = require "telescope.actions"

    telescope.setup {
        defaults = {

            prompt_prefix = " ",
            selection_caret = " ",
            path_display = { "smart" },
            file_ignore_patterns = { ".git/", "node_modules" },

            mappings = {
                i = {
                    ["<Down>"] = actions.cycle_history_next,
                    ["<Up>"] = actions.cycle_history_prev,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                },
            },
        },
    }
end

return M
