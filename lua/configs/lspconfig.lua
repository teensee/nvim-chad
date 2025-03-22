-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  html  = {},
  cssls = { cmd = {"cssls"} },
  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
      gopls = {
        analyses = {
          shadow = true,   -- check shadowing
        },
        staticcheck = true, -- Enable staticcheck
        gofumpt = true, -- включаю автоформатирвоание
      }
    }
  },
  phpactor = {
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
    root_dir = lspconfig.util.root_pattern("composer.json", ".git")
  }
}

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  require("lspconfig")[name].setup(opts)
end
