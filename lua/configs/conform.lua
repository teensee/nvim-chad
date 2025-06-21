return {
    formatters_by_ft = {
        lua = { "stylua" },

        -- golang
        templ = {},

        go = { "gofmt", "goimports", "golines" },
        gomod = { "gofumpt", "goimports" },
        gowork = { "gofumpt", "goimports" },
        gotmpl = { "gofumpt", "goimports" },

        -- php
        -- todo: ....

        -- markdown
        markdown = { "markdownlint", "prettier" },

        css = { "prettier" },
        html = { "prettier" },
        yaml = { "prettier" },
    },

    formatters = {
        -- ["goimports-reviser"] = {
        --     prepend_args = { "-rm-unused" },
        -- },
        golines = {
            prepend_args = { "--max-len=120" },
        },
    },

    format_on_save = function(bufnr)
        local filetype = vim.bo[bufnr].filetype
        if filetype == "templ" then
            return false -- не форматировать templ файлы
        end
        return { timeout_ms = 500, lsp_fallback = true }
    end,
}
