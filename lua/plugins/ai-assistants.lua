return {
    {
        "yetone/avante.nvim",
        enabled = false,
        event = "VeryLazy",
        version = "*",
        opts = {
            provider = "ollama",
            providers = {
                ollama = {
                    endpoint = "http://127.0.0.1:11434",
                    model = "qwen2.5-coder:1.5b",
                    timeout = 30000, -- Timeout in milliseconds
                    extra_request_body = {
                        options = {
                            temperature = 0.75,
                            num_ctx = 20480,
                            keep_alive = "5m",
                        },
                    },
                },
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
        enabled = false,
        event = "VeryLazy",
        keys = {
            -- GEN.nvim
            -- see https://lazy.folke.io/spec/lazy_loading#%EF%B8%8F-lazy-key-mappings
            { "<leader>ag", ":Gen<CR>", mode = { "n", "v" }, desc = "Вызвать Gen.nvim" },
            { "<leader>ae", ":Gen Summarize<CR>", mode = { "n", "v" }, desc = "Объяснить код" },
            { "<leader>af", ":Gen Enhance_Code<CR>", mode = { "n", "v" }, desc = "Рефакторинг" },
        },
        opts = {
            model = "qwen2.5-7b-ru-backend-helper:latest",
            display_mode = "split",
            show_prompt = true,
            show_model = true,
            no_auto_close = false,
        },
    },
}
