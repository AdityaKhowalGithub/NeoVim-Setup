local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, {desc = "Add file to harpoon"})
vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu, {desc = "Toggle harpoon menu"})
vim.keymap.set("n", "<C-[>", function() ui.nav_file(1) end, {desc = "Navigate to previous file"})
vim.keymap.set("n", "<C-]>", function() ui.nav_file(2) end, {desc = "Navigate to next file"})
vim.keymap.set("n", "<C-\\>", function() ui.nav_file(3) end, {desc = "Navigate to previous file"})
vim.keymap.set("n", "<C-'>", function() ui.nav_file(4) end, {desc = "Navigate to next file"})
vim.keymap.set("n", "<Esc>", function() vim.cmd(":") end, {desc = "Close harpoon menu"})

