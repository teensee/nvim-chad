return {
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            -- "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", "gomod" },
        build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    },
    {
        "phpactor/phpactor",
        ft = "php",
        build = "composer install --no-dev --optimize-autoloader",
        cmd = { "Phpactor" }, -- чтобы команду :Phpactor регистрировать
        config = function()
            -- Опциональная интеграция с popup и т.п.
        end,
    },
}
