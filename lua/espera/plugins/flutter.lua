local M = {
    "akinsho/flutter-tools.nvim"
}

function M.init()
   local keymap = vim.keymap.set 
   keymap("n", "flr", ":FlutterRun<cr>")
   keymap("n", "fld", ":FlutterDevices<cr>")
   keymap("n", "flq", ":FlutterQuit<cr>")
   keymap("n", "flc", ":FlutterClear<cr>")
end

function M.config()
    local handlers = require("espera.lsp.handlers")
    require("flutter-tools").setup({
        ui = {
            border = "rounded",
        },

        dev_log = {
            enabled = true,
            open_cmd = "8split"
        },

        dev_tools = {
            autostart = true,
            auto_open_browser = true,
        },

        lsp = {
            color = {
                enabled = true,
            },

            on_attach = handlers.on_attach,
            capabilities = handlers.capabilities,

            settings = {
                showTodos = true,
                enableSnippets = true,
                completeFunctionCalls = true,
                renameFilesWithClasses = "always",
            }
        }
    })
end

return M
