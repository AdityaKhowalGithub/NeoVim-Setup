vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
         offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer" ,
                    text_align = "left",
                    separator = true
                }
            },
    
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                return "("..count..")"
            end,
             hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            },

               }
           }
