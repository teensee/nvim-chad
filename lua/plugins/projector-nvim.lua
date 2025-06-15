return {
    {
        "ahmedkhalf/project.nvim",
        enabled = false,
        keys = {
            { "<leader>fp", "<cmd>Telescope projects<CR>", desc = "Вызвать Gen.nvim" },
        },
        config = function()
            require("project_nvim").setup {
                -- Настройки по желанию
                detection_methods = { "lsp", "pattern" },
                patterns = { ".git", "Makefile", "package.json" },
            }
        end,
        lazy = false,
    },
}
