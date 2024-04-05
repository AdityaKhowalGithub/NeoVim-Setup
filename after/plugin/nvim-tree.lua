  local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local tree ={}
tree.open = function ()
   require'bufferline.state'.set_offset(31, 'FileTree')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
   require'bufferline.state'.set_offset(0)
   require'nvim-tree'.close()
end


     local function open_nvimtree_on_start()
         api.tree.open()

  end


    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
    vim.keymap.set('n', '<leader>r', api.tree.focus,                   opts('Focus'))
    -- Keybind to switch focus between the tree and the file



  end
  -- pass to setup along with your other options
  require("nvim-tree").setup {
    view = {
        width = 30,
        side = 'left',
    },
    ---
    on_attach = my_on_attach,
    open = open_nvimtree_on_start,

    ---
  }
