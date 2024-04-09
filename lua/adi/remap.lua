-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set('n', 'n', 'nzzzv')
-- vim.keymap.set('n', 'N', 'Nzzzv')

-- vim.keymap.set("n", "J", "mzJ`z")

-- vim.keymap.set("x", "<leader>p", "\"_dP")

-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("v", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")
-- vim.keymap.set("n", "<leader>c", "maggVG\"+y`a")
----vim.keymap.set("n", "<leader>e", "gg\"_dGi")
----vim.keymap.set("n", "<leader>f", "maggVG=`a")
-- vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', {desc = 'Toggle Terminal'})
-- vim.keymap.set('n', '<C-a>', 'ggVG', {desc = 'Select All Text'})

-- vim.keymap.set("n", "vm", "va{V")

-- vim.keymap.set('n', '<leader>n', ':let new_name=input("New filename: ") | silent execute "!mv % %:h/" . new_name | execute "e %:h/" . new_name<CR>')

-- vim.keymap.set('n', '<leader>ff', '<cmd>Telescope live_grep<CR>');
----comments
-- vim.keymap.set("n", "<C-/>", ":normal Vgcc<CR>");
-- vim.keymap.set("v", "<C-/>", ":normal Vgcc<CR>");

   -- vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
   -- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    -- vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    -- vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

---- vim.keymap.set("i", "<C-c>", "<Esc>")
-- vim.keymap.set({'v', 's'}, '<C-c>', '"+y', {desc = 'Copy to Clipboard'})

-- vim.keymap.set("n", "Q", "<nop>")

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

---- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set('n', '<leader>r', function()
    -- local find = vim.fn.input('Replace: ')
    -- if vim.fn.search(find, 'nw') == 0 then
        -- print('String not found: ' .. find)
        -- return
    -- end
    -- local replace = vim.fn.input('Replace: ' .. find .. ' with: ')
    -- vim.cmd('%s/' .. vim.fn.escape(find, '/') .. '/' .. vim.fn.escape(replace, '/') .. '/g')
-- end)

-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- vim.keymap.set("n", "<C-S-c>", ":ToggleCopilot<CR>")


-- vim.keymap.set("n", "<C-s>", ":w<CR>")


-- vim.keymap.set("n","<S-Tab>",":bprev<CR>")
-- Toggle project viewer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Toggle Project Viewer" })

-- Move selected lines down
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })
-- Move selected lines up
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })

-- Center screen after page down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down and Center" })
-- Center screen after page up
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up and Center" })
-- Keep search matches in the middle of the window
vim.keymap.set('n', 'n', 'nzzzv', { desc = "Next Search Result, Center" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Previous Search Result, Center" })

-- Join lines without space adjustment
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join Lines Neatly" })

-- Paste over without changing clipboard
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste Over Without Yank" })

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank to Clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank Selection to Clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank Line to Clipboard" })
-- Copy entire file to clipboard
vim.keymap.set("n", "<leader>c", "maggVG\"+y`a", { desc = "Copy Entire File to Clipboard" })

-- Toggle Terminal
vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', { desc = 'Toggle Terminal' })
-- Select All Text
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select All Text' })

-- Visual mode around brackets
vim.keymap.set("n", "vm", "va{V", { desc = "Visual Mode Around Brackets" })

-- Rename file
vim.keymap.set('n', '<leader>n', ':let new_name=input("New filename: ") | silent execute "!mv % %:h/" . new_name | execute "e %:h/" . new_name<CR>', { desc = 'Rename Current File' })

-- Telescope live grep
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope live_grep<CR>', { desc = 'Telescope Live Grep' })

-- Commenting
vim.keymap.set("n", "<C-/>", ":normal Vgcc<CR>", { desc = "Comment Line" })
vim.keymap.set("v", "<C-/>", ":normal Vgcc<CR>", { desc = "Comment Selection" })

-- NvimTree mappings
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle File Explorer on Current File" })
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse File Explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" })

-- Copy to Clipboard
vim.keymap.set({'v', 's'}, '<C-c>', '"+y', { desc = 'Copy to Clipboard' })

-- Disable Q
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q" })

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open Tmux Sessionizer" })

-- Find and replace
vim.keymap.set('n', '<leader>r', function()
    local find = vim.fn.input('Replace: ')
    if vim.fn.search(find, 'nw') == 0 then
        print('String not found: ' .. find)
        return
    end
    local replace = vim.fn.input('Replace: ' .. find .. ' with: ')
    vim.cmd('%s/' .. vim.fn.escape(find, '/') .. '/' .. vim.fn.escape(replace, '/') .. '/g')
end, { desc = "Find and Replace" })

-- Set executable file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make File Executable" })

-- Toggle Copilot
vim.keymap.set("n", "<C-S-c>", ":ToggleCopilot<CR>", { desc = "Toggle Copilot" })

-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save File" })

-- Previous buffer
vim.keymap.set("n","<S-Tab>",":bprev<CR>", { desc = "Previous Buffer" })

