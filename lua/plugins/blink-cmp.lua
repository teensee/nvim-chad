return {
    { import = "nvchad.blink.lazyspec" },
    {
        "saghen/blink.cmp",
        enabled = true,
        event = { "LspAttach", "InsertEnter" },
        opts = {
            sources = {
                default = { "copilot", "lsp", "path", "snippets", "buffer" },
                providers = {
                    copilot = {
                        name = "copilot",
                        module = "blink-cmp-copilot",
                        score_offset = 100,
                        async = true,
                    },
                },
            },
        },
    },
    {
        "giuxtaposition/blink-cmp-copilot",
        after = { "copilot.lua" },
    },
}
