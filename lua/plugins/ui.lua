return {
    "folke/noice.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = {
        cmdline = { enabled = true },
        messages = { enabled = true },
        popupmenu = { enabled = true },
        notify = { enabled = true },

        lsp = {
            progress = {
                enabled = true, -- прогресс LSP можно оставить
                format = "lsp_progress",
                format_done = "lsp_progress_done",
                throttle = 1000 / 30,
                view = "mini",
            },
            -- override = {},
            hover = { enabled = false },
            signature = { enabled = false },
            message = { enabled = false },
            documentation = { enabled = false },
        },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
