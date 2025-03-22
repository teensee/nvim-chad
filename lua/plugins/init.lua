return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform"
    },
    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                -- html
                "html",
                "css",
                -- main languages
                "php",
                "phpdoc",

                "go",
                "gomod",
                "gosum",
                "gowork",

                -- config languages
                "yaml",
                "markdown",
                "bash",
                "toml",
                "json"
            }
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            filters = {
                dotfiles = false,
                custom = { "^.git$", "^.idea$"},
            },
            renderer = {
                group_empty = true
            },
            git = {
                ignore = false
            },
            view = {
                width = 50
            },
        },
    }
}
