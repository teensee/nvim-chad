return {
    formatters_by_ft = {
        lua = { "stylua" },
        -- golang
        go = { "gofumpt", "goimports-reviser", "golines" },
        gomod = { "gofumpt", "goimports-reviser" },
        gowork = { "gofumpt", "goimports-reviser" },
        gotmpl = { "gofumpt", "goimports-reviser" },

        -- php
        -- todo: ....

        -- markdown
        markdown = { "markdownlint", "prettier" },

        -- css = { "prettier" },
        -- html = { "prettier" },
    },

    formatters = {
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=80" },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}
