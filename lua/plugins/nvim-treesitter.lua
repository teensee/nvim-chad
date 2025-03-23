return {
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
            "json",
        },
    },
}
