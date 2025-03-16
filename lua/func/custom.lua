function Greet()
    print("Hello Deva")
end
Greet()

function DeleteBuffers()
    vim.cmd("%bd | q")
end
 
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282726" })
vim.api.nvim_set_hl(0, "LspReferenceText", {  bold = true }) 
vim.api.nvim_set_hl(0, "LspReferenceRead", {  bold = true, undercurl = true })  
vim.api.nvim_set_hl(0, "LspReferenceWrite", {  bold = true, undercurl = true }) 
vim.api.nvim_set_hl(0, "String", { fg = "#009b4f", italic = true }) 
vim.api.nvim_set_hl(0, "Statement", { bold = true}) -- fg = "#126794" 
-- vim.api.nvim_set_hl(0, "Keyword", { fg = "#90539a", blend = 10}) -- fg = "#126794" 
-- vim.api.nvim_set_hl(0, "@function", { fg = "#126794"}) -- fg = "#126794" 
