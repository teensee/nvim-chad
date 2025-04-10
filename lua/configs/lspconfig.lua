-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
    html = {},
    cssls = { cmd = { "cssls" } },
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
    phpactor = {
        cmd = { "phpactor", "language-server" },
        filetypes = { "php" },
        root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
    },
    -- intelephense = {
    --     filetypes = { "php" },
    --     root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
    -- },
}

for name, opts in pairs(servers) do
    opts.on_init = nvlsp.on_init
    opts.on_attach = nvlsp.on_attach
    opts.capabilities = nvlsp.capabilities

    require("lspconfig")[name].setup(opts)
end
