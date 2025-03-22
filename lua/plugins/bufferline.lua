return {
    'akinsho/bufferline.nvim',
    event = "BufReadPre",  -- Load before buffers read
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('bufferline').setup({
            options = {
                mode = "buffers",
                always_show_bufferline = true,
                highlight = { 
                    buffer_selected = { 
                        guifg = "#303030", 
                        guibg = "#0087d7" 
                    },
                    buffer_visible = { 
                        guifg = "#ffffff", 
                        guibg = "#0087d7" 
                    },
                    tab_selected = { 
                        guifg = "#ffffff", 
                        guibg = "#0087d7" 
                    }

                }
            },
        })
    end
}

