return {
    {
        "github/copilot.vim",
        event = "VeryLazy",
        enabled = false,
        config = function()
            -- Отключаем стандартный Tab mapping
            vim.g.copilot_no_tab_map = true

            -- Маппим принятие предложения на Ctrl+j
            vim.keymap.set("i", "<C-j>", 'copilot#Accept("")', {
                expr = true,
                replace_keycodes = false,
            })

            -- Дополнительные полезные маппинги
            vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)") -- принять слово
            vim.keymap.set("i", "<C-;>", "<Plug>(copilot-next)") -- следующее предложение
            vim.keymap.set("i", "<C-,>", "<Plug>(copilot-previous)") -- предыдущее предложение
            vim.keymap.set("i", "<C-\\>", "<Plug>(copilot-dismiss)") -- отклонить предложение
        end,
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup {}
        end,
    },
}
