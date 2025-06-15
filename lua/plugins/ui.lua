return {
    "folke/noice.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = {
        cmdline = { enabled = true },
        messages = { enabled = true }, -- conflict with go package
        popupmenu = { enabled = true },
        notify = { enabled = true },
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
