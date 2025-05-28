return {
    "folke/noice.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = {
        cmdline = { enabled = true },
        messages = { enabled = true },
        popupmenu = { enabled = false },
        notify = { enabled = true },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
