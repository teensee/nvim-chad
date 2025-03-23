return {
    "epwalsh/obsidian.nvim",
    version = "*", -- рекомендуемая версия — последняя стабильная
    lazy = true,
    ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "ObsidianNotes",
                path = vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/ObsidianNotes"),
            },
        },
        completion = {
            nvim_cmp = true, -- интеграция с nvim-cmp для автодополнения ссылок
        },
        daily_notes = {
            folder = "Daily", -- Папка для ежедневных заметок
            date_format = "%Y-%m-%d", -- Формат даты для удобства
        },
    },
}
