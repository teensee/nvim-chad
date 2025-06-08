require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ch", ":NvCheatsheet<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Obsidian
map("n", "<leader>od", ":ObsidianDailies<CR>", { desc = "Ежедневные заметки" })
map("n", "<leader>ck", ":ObsidianToggleCheckbox<CR>", { desc = "Toggle checkbox" })

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Toggle LazyGit" })

