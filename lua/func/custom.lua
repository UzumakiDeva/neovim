function Greet()
    print("Hello Deva")
end
Greet()

function DeleteBuffers()
    vim.cmd("%bd | q")
end

function ConsoleLogWord()
    local word = vim.fn.expand("<cword>") -- Get the current word under cursor
    local line = "console.log('🎉 " .. word .. " -> ', " .. word .. ");"
    vim.api.nvim_put({ line }, "l", true, true) -- Insert the log statement below
end
vim.api.nvim_set_keymap("n", "<leader>cl", ":lua ConsoleLogWord()<CR>", { noremap = true, silent = true })

function PrintWord()
    local word = vim.fn.expand("<cword>") -- Get the current word under cursor
    local indicator = "print(-----------------)"
    local line = "print('🔥 " .. word .. " -> ', " .. word .. ")"
    vim.api.nvim_put({ indicator, line, indicator }, "l", true, true) -- Insert the log statement below
end
vim.api.nvim_set_keymap("n", "<leader>p", ":lua PrintWord()<CR>", { noremap = true, silent = true })













-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282726" })
-- vim.api.nvim_set_hl(0, "LspReferenceText", {  bold = true }) 
-- vim.api.nvim_set_hl(0, "LspReferenceRead", {  bold = true, undercurl = true })  
-- vim.api.nvim_set_hl(0, "LspReferenceWrite", {  bold = true, undercurl = true }) 
-- vim.api.nvim_set_hl(0, "Statement", { bold = true}) -- fg = "#126794" 
-- vim.api.nvim_set_hl(0, "Keyword", { fg = "#90539a", blend = 10}) -- fg = "#126794" 
-- vim.api.nvim_set_hl(0, "@function", { fg = "#126794"}) -- fg = "#126794" 
-- vim.api.nvim_set_hl(0, "String", { italic = true }) 
