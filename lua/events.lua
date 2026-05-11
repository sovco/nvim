-- https://gist.github.com/dtr2300/2f867c2b6c051e946ef23f92bd9d1180 list of commands
-- Calls a docker container with clang-format after each buffer write, formatting is in place
vim.api.nvim_create_autocmd("BufWritePost", {
      once = false,
      callback = function(args)
          local filename = vim.fn.expand('%:.')
          if string.match(filename, "%.h$") or string.match(filename, "%.hpp$") or string.match(filename, "%.c$") or string.match(filename, "%.cpp$") then 
            local output = _G.utils.cmdcall("clang-format -i --style=file " .. filename)
            -- Reloads current buffer
            vim.cmd('e!')
          end
      end
})

vim.api.nvim_create_autocmd("VimEnter", {
      once = true,
      callback = function() 
        vim.notify('Looking for project specific file .nvim.lua', vim.log.levels.INFO)
        local config_file = vim.fn.findfile('.nvim.lua', '.;')
        if config_file ~= '' then
            local full_path = vim.fn.fnamemodify(config_file, ':p')
            dofile(full_path)
            vim.notify('Project specific loaded: ' .. config_file, vim.log.levels.INFO)
            return
        end
        vim.notify('Project specific file was not found', vim.log.levels.INFO)
      end
})
