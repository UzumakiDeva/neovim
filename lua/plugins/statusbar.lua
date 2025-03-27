return {
    "b0o/incline.nvim",
    config = function()
        require("incline").setup({
            highlight = {
                groups = {
                    InclineNormal = { guibg = "#1e1e2e", guifg = "#cdd6f4" }, -- Background & text color
                    InclineNormalNC = { guibg = "#313244", guifg = "#a6adc8" },
                },
            },
            window = {
                margin = { vertical = 0, horizontal = 1 },
                placement = { horizontal = "right", vertical = "top" },
                padding = 1,
            },
            render = function(props)
                return { { vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")} }
            end,
        })
    end,
    event = "VeryLazy",
}

