-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {
    base46 = {
        -- theme = "onedark",
        theme = "everblush",
        theme_toggle = { "everblush", "catppuccin" },
    },
    nvdash = { load_on_startup = true },
    ui = {
        tabufline = {
            lazyload = false,
        },
        telescope = { style = "bordered" },
    },
}

return M
