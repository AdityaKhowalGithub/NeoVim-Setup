vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>c", "maggVG\"+y`a")
--vim.keymap.set("n", "<leader>e", "gg\"_dGi")
-- vim.keymap.set("n", "<leader>f", "maggVG=`a")
vim.keymap.set('n', '<C-`>', ':ToggleTerm<CR>', {desc = 'Toggle Terminal'})
vim.keymap.set('n', '<C-a>', 'ggVG', {desc = 'Select All Text'})

vim.keymap.set("n", "vm", "va{V")

vim.keymap.set('n', '<leader>n', ':let new_name=input("New filename: ") | silent execute "!mv % %:h/" . new_name | execute "e %:h/" . new_name<CR>')

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope live_grep<CR>');
-- comments
vim.keymap.set("n", "<C-/>", ":normal Vgcc<CR>");
vim.keymap.set("v", "<C-/>", ":normal Vgcc<CR>");

   vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
   vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- replace all
vim.keymap.set('n', '<leader>r', function()
    local find = vim.fn.input('Replace: ')
    if vim.fn.search(find, 'nw') == 0 then
        print('String not found: ' .. find)
        return
    end
    local replace = vim.fn.input('Replace: ' .. find .. ' with: ')
    vim.cmd('%s/' .. vim.fn.escape(find, '/') .. '/' .. vim.fn.escape(replace, '/') .. '/g')
end)

-- set executable file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- copilot
vim.keymap.set("n", "<C-S-c>", ":ToggleCopilot<CR>")

-- write
vim.keymap.set("n", "<C-s>", ":w<CR>")


vim.keymap.set("n","<S-Tab>",":bprev<CR>")

