-- let g:limelight_conceal_ctermfg = 'gray'
-- let g:limelight_conceal_ctermfg = 240


-- let g:limelight_conceal_guifg = 'DarkGray'
-- let g:limelight_conceal_guifg = '#777777'
-- autocmd! User GoyoEnter Limelight
-- autocmd! User GoyoLeave Limelight!
-- Set Limelight options
vim.g.limelight_conceal_ctermfg = 'gray'  -- This line seems to be immediately overridden by the next, so it could be omitted.
vim.g.limelight_conceal_ctermfg = 240

vim.g.limelight_conceal_guifg = 'DarkGray'  -- This line is also immediately overridden, so it could be omitted.
vim.g.limelight_conceal_guifg = '#777777'

-- Define autocommands for entering and leaving Goyo mode to trigger Limelight
vim.api.nvim_create_autocmd("User", {
    pattern = "GoyoEnter",
    callback = function()
        vim.cmd("Limelight")
    end
})

vim.api.nvim_create_autocmd("User", {
    pattern = "GoyoLeave",
    callback = function()
        vim.cmd("Limelight!")
    end
})

