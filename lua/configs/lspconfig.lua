-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
    html = {},
    -- cssls = { cmd = { "cssls" } },
    gopls = {
        cmd = { "gopls" },
        root_pattern = lspconfig.util.root_pattern("go.mod", ".git"),
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
            gopls = {
                analyses = {
                    shadow = true, -- check shadowing
                },
                staticcheck = true, -- Enable staticcheck
                gofumpt = false, -- включаю автоформатирвоание
                completeUnimported = true,
                usePlaceholders = true,
            },
        },
    },
    pyright = {},

    -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/phpactor.lua#L7
    phpactor = {
        cmd = { "phpactor", "language-server" },
        filetypes = { "php" },
        root_dir = function(bufnr, on_dir)
            local fname = vim.api.nvim_buf_get_name(bufnr)
            local cwd = assert(vim.uv.cwd())
            local root = vim.fs.root(fname, { "composer.json", ".git", ".phpactor.json", ".phpactor.yml" })

            -- prefer cwd if root is a descendant
            on_dir(root and vim.fs.relpath(cwd, root) and cwd)
        end,
    },

    -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/intelephense.lua#L28
    -- intelephense = {
    --     cmd = { "intelephense", "--stdio" },
    --     filetypes = { "php" },
    --     root_dir = function(bufnr, on_dir)
    --         local fname = vim.api.nvim_buf_get_name(bufnr)
    --         local cwd = assert(vim.uv.cwd())
    --         local root = vim.fs.root(fname, { "composer.json", ".git" })
    --
    --         -- prefer cwd if root is a descendant
    --         on_dir(root and vim.fs.relpath(cwd, root) and cwd)
    --     end,
    -- },
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name)
    vim.lsp.config(name, opts)
end
