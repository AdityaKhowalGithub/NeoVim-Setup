require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

map("n", "gs", "<cmd>ObsidianSearch<CR>", {desc = "Obsidian Search"})
map("n", "gb", "<cmd>ObsidianBacklinks<CR>", {desc = "Obsidian Back links"})
map({'v', 's'}, '<C-c>', '"+y', {desc = 'Copy to Clipboard'})-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>c", "maggVG\"+y`a")


-- Keybindings with issues
-- Keybindings with issues
map('n', 'gd', function() require('telescope.builtin').lsp_definitions() end, { desc = '[G]oto [D]efinition' })
map('n', 'gr', function() require('telescope.builtin').lsp_references() end, { desc = '[G]oto [R]eferences' })
map('n', 'gI', function() require('telescope.builtin').lsp_implementations() end, { desc = '[G]oto [I]mplementation' })
map('n', '<leader>D', function() require('telescope.builtin').lsp_type_definitions() end, { desc = 'Type [D]efinition' })
map('n', '<leader>ds', function() require('telescope.builtin').lsp_document_symbols() end, { desc = '[D]ocument [S]ymbols' })
map('n', '<leader>ws', function() require('telescope.builtin').lsp_dynamic_workspace_symbols() end, { desc = '[W]orkspace [S]ymbols' })
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
map('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
map('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })

vim.cmd([[
  command! CpOn lua require('lazy').load({ plugins = { "copilot.vim" } }) vim.cmd('Copilot enable')
]])

-- map("n", "c-s", "<cmd>w<cr>ggVG")
map("n", "<leader>gg", function()
      local message = vim.fn.input("Commit message: ")
  vim.cmd("!git add . && git commit -m '" .. message .. "' && git push")
end, { desc = "Git add, commit, and push" })

-- Tmux navigation
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate Left" })
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate Down" })
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate Up" })
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate Right" })

-- Comment map leader / to commentary plugin 
map("n", "<leader>/", "<cmd>Commentary<cr>", {desc = "Comment"})
--map("n", "<leader>/", "<cmd>CommentToggle<cr>", { desc = "Comment" })
--map control a to select all
map("n", "<C-a>", "ggVG", { desc = "Select all" })
