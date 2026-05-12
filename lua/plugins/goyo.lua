return {
    {
        'junegunn/goyo.vim',
        config = function()
            -- Optional: Set Goyo-specific settings
            vim.g.goyo_width = 80  -- Set the width of the Goyo window
            vim.g.goyo_linenr = 1  -- Enable line numbers in Goyo mode
        end,
    }
}
