function Greet()
    print("Hello Deva")
end
Greet()

function DeleteBuffers()
    vim.cmd("%bd | q")
end
math.randomseed(os.time()) 
function PickEmoji()
    local emojis = {"😁", "😆", "🥳", "😍", "🥵", "🥶", "👺", "😵", "💫", "🤑", "🐃", "🦕", "🐳", "🐈", "🐶", "🎒"}
    local random_emoji = emojis[math.random(#emojis)] 
    return random_emoji
end

function ConsoleLogWord()
    local word = vim.fn.expand("<cword>") -- Get the current word under cursor
    local emoji = PickEmoji()
    local line = "console.log('" .. emoji .. " " .. word .. " -> ', " .. word .. ");"

    -- Ensure proper spacing and avoid errors
    vim.api.nvim_put({ line }, "l", true, true) -- Insert the log statement below
end
vim.api.nvim_set_keymap("n", "<leader>cl", ":lua ConsoleLogWord()<CR>", { noremap = true, silent = true })

function PrintWord()
    local word = vim.fn.expand("<cword>") -- Get the current word under cursor
    local emoji = PickEmoji() -- Call PickEmoji to get a random emoji
    local indicator = "print('-----------------')" -- Corrected print syntax
    local line = "console.log('" .. emoji .. " " .. word .. " -> ', " .. word .. ");"

    -- Insert indicator, log statement, and closing indicator
    vim.api.nvim_put({ indicator, line, indicator }, "l", true, true)
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
