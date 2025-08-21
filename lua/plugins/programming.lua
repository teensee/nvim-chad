return {
    -- golang
    {
        "ray-x/go.nvim",
        dependencies = {
            -- "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup {
                tag_transform = "camelcase",
            }
        end,
        event = { "CmdlineEnter" },
        ft = { "go", "gomod" },
        build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    },

    -- php
    {
        "phpactor/phpactor",
        enabled = false,
        ft = "php",
        build = "composer install --optimize-autoloader",
        cmd = { "Phpactor" }, -- чтобы команду :Phpactor регистрировать
        config = function()
            -- Опциональная интеграция с popup и т.п.
        end,
    },

    -- snippets
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
    },

    -- for python projects
    -- "venv-selector.nvim"
}
