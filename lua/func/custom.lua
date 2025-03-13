function Greet()
    print("Hello from Neovim!")
end

function DeleteBuffers()
    vim.cmd("%bd | q")
end
