-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
	-- builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
--
-- First, set up the Telescope with border and custom border characters
require('telescope').setup{
    defaults = {
        border = true,
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        TelescopePreviewer = {
            border = true,
        },
    }
}

-- Importing the builtin Telescope functions for easy access
local builtin = require('telescope.builtin')

-- Setting up key mappings for various Telescope functions
-- Find files with a border
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Find files in git with a border
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Search for a string in your project with a border
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


