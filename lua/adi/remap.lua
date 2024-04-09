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
--
--
--
-- Set the leader key to space
vim.g.mapleader = " "

-- Open the file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Move selected lines down/up in visual mode
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Center the screen after scrolling down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center screen" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center screen" })

-- Center the screen after searching forward/backward
vim.keymap.set('n', 'n', 'nzzzv', { desc = "Search forward and center screen" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Search backward and center screen" })

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- Paste from system clipboard in visual mode
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste from system clipboard in visual mode" })

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard in visual mode" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy line to system clipboard" })

-- Copy entire buffer to system clipboard
vim.keymap.set("n", "<leader>c", "maggVG\"+y`a", { desc = "Copy entire buffer to system clipboard" })

-- Toggle terminal
vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', { desc = 'Toggle Terminal' })

-- Select all text
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select All Text' })

-- Select surrounding {} block in visual mode
vim.keymap.set("n", "vm", "va{V", { desc = "Select surrounding {} block in visual mode" })

-- Rename current file
vim.keymap.set('n', '<leader>n', ':let new_name=input("New filename: ") | silent execute "!mv % %:h/" . new_name | execute "e %:h/" . new_name<CR>', { desc = 'Rename current file' })

-- Live grep using Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope live_grep<CR>', { desc = 'Live grep using Telescope' })

-- Comment/uncomment lines
vim.keymap.set("n", "<C-/>", ":normal Vgcc<CR>", { desc = "Comment/uncomment lines in normal mode" })
vim.keymap.set("v", "<C-/>", ":normal Vgcc<CR>", { desc = "Comment/uncomment lines in visual mode" })

-- Toggle file explorer
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- Copy to system clipboard in visual and select mode
vim.keymap.set({'v', 's'}, '<C-c>', '"+y', {desc = 'Copy to Clipboard'})

-- Disable Ex mode
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- Open a new tmux window with tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open new tmux window with tmux-sessionizer" })

-- Replace all occurrences of the current word
vim.keymap.set('n', '<leader>r', function()
    local find = vim.fn.input('Replace: ')
    if vim.fn.search(find, 'nw') == 0 then
        print('String not found: ' .. find)
        return
    end
    local replace = vim.fn.input('Replace: ' .. find .. ' with: ')
    vim.cmd('%s/' .. vim.fn.escape(find, '/') .. '/' .. vim.fn.escape(replace, '/') .. '/g')
end, { desc = 'Replace all occurrences of the current word' })

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make the current file executable" })

-- Toggle Copilot
vim.keymap.set("n", "<C-S-c>", ":ToggleCopilot<CR>", { desc = "Toggle Copilot" })

-- Save the current file
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save the current file" })

-- Switch to the previous buffer
vim.keymap.set("n","<S-Tab>",":bprev<CR>", { desc = "Switch to the previous buffer" })
