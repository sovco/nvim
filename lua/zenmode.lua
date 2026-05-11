local M = {}

function M.zenmodetoggle()
    if not vim.g.zen_mode then
        vim.cmd("syntax off")
        vim.cmd("set number!")
        vim.cmd("set relativenumber!")
        require('lualine').hide({
           place = {'statusline', 'tabline', 'winbar'},
           unhide = false,
        })
        vim.cmd("Goyo 150")
        vim.cmd("Limelight!! 0.9")
        vim.g.zen_mode = true
        return 
    end
    vim.cmd("syntax on")
    vim.cmd("Goyo!")
    vim.cmd("Limelight!!")
    vim.cmd("set number!")
    vim.cmd("set relativenumber!")
    require('lualine').hide({
       place = {'statusline', 'tabline', 'winbar'},
       unhide = true,
    })
    vim.g.zen_mode = false
end

return M
