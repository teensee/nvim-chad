require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

-- set tab = 4 spaces
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

o.backspace = "indent,eol,start"
