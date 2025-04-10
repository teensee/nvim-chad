require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ch", ":NvCheatsheet<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
-- map("v", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action (Visual)" })

-- Obsidian
map("n", "<leader>od", ":ObsidianDailies<CR>", { desc = "Ежедневные заметки" })
map("n", "<leader>ck", ":ObsidianToggleCheckbox<CR>", { desc = "Toggle checkbox" })

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Toggle LazyGit" })

-- GEN.nvim
map({ "n", "v" }, "<leader>ag", ":Gen<CR>", { desc = "Вызвать Gen.nvim" })
map({ "n", "v" }, "<leader>ae", ":Gen Explain<CR>", { desc = "Объяснить код" })
map({ "n", "v" }, "<leader>af", ":Gen Fix<CR>", { desc = "Рефакторинг" })
