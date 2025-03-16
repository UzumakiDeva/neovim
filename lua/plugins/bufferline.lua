return {
    'akinsho/bufferline.nvim',
    event = "BufReadPre",  -- Load before buffers read
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('bufferline').setup({
            options = {
                mode = "buffers",
                always_show_bufferline = true,
            }
        })
    end
}

