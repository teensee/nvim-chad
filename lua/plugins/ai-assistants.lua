return {
    {
        "yetone/avante.nvim",
        enabled = false, -- Включите plugin
        event = "VeryLazy", -- Это событие, которое будет trigger'ровано после загрузки конфигурации Neovim
        version = nil, -- Версия не важна для этого plugins
        opts = {
            provider = "ollama",
            ollama = {
                model = "qwen2.5-7b-ru-backend-helper:latest", -- Модель, которую вы хотите использовать
                timeout = 30000,
                temperature = 0.4,
                max_tokens = 2048,
            },
        },
        build = "make",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
    },
    {
        "David-Kunz/gen.nvim",
        enabled = true,
        event = "VeryLazy",
        opts = {
            model = "qwen2.5-7b-ru-backend-helper:latest", -- имя твоей кастомной модели
            display_mode = "split", -- можно "float" или "replace"
            show_prompt = true,
            show_model = true,
            no_auto_close = false,
        },
    },
}
