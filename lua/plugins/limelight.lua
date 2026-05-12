return {
    {
        'junegunn/limelight.vim',
        config = function()
            -- Optional: Set Limelight-specific settings
            vim.g.limelight_default_coefficient = 0.7  -- Dimming strength (default: 0.5)
            vim.g.limelight_paragraph_span = 1         -- Highlight current paragraph (default: 0)
        end,
    }
}
