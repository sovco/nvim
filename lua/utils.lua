local M = {}

function M.currentlinenum()
    local cursor = vim.api.nvim_win_get_cursor(0)
    return cursor[1]
end

function M.insertlines(lines, linenum)
    vim.api.nvim_buf_set_lines(vim.api.nvim_get_current_buf(), linenum, linenum + #lines, false, lines)
end

function M.cmdcall(cmd)
    local handle = io.popen(cmd, 'r')
    local stdout = handle:read('*a')
    handle:close()
    return stdout
end

function M.countlines(str)
    local count = 0
    for _ in string.gmatch(str, "\n") do
        count = count + 1
    end
    return count
end

function M.string_to_line_table(str)
    local res = {}
    for line in string.gmatch(output .. "\n", "(.-)\n") do
       table.insert(res, line);
    end
    return res 
end

-- Function to execute Lua code from visual selection and print output
function M.executeluafromselection()
    vim.cmd('normal! "qy')
    local selection = vim.fn.getreg('q')
    local file_path = "/tmp/run.tmp.lua"
    local file = io.open(file_path, "w")
    local newlinecnt = M.countlines(selection)

    if file then
        file:write(selection)
        file:close()
        local cmd = 'lua ' .. file_path
        local output = M.cmdcall(cmd)

        -- Get the current cursor position
        local cursor_pos = vim.api.nvim_win_get_cursor(0)
        local row, col = cursor_pos[1], cursor_pos[2]

        -- Insert the output below the current line
        M.insertlines(M.string_to_line_table(output), M.currentlinenum() + newlinecnt)
    end
end

function M.timestamp()
    return M.cmdcall('date "+%Y/%m/%d %R"')
end

function M.inserttimestamp()
    local ts = M.timestamp():gsub("[\n\r]", " ") 
    local lines = { ts }
    M.insertlines(lines, M.currentlinenum())
end

function M.load_project_config()
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

return M
