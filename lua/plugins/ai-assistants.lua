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
    {
        "TabbyML/vim-tabby",
        enabled = false,
        lazy = false,
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        init = function()
            vim.g.tabby_agent_start_command = { "npx", "tabby-agent", "--stdio" }
            vim.g.tabby_inline_completion_trigger = "auto"
        end,
    },
    {
        "github/copilot.vim",
        event = "VeryLazy",
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
}
