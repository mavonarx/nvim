---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'catppuccin',
    statusline = {
        -- modules arg here is the default table of modules
        overriden_modules = function(modules)
            table.insert(
                modules,
                11,
                (function()
                    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                    return "L" .. line .. ",C" .. (col + 1)
                end)()
            )
        end,
    },
}
-- M.plugins = 'custom.plugins'
-- M.mappings = require("custom.mappings")
return M
