return {
    {
        'vimwiki/vimwiki',
        init = function()
            -- Basic Vimwiki configuration
            vim.g.vimwiki_list = {
                {
                    path = '.local/share/nvim/vimwiki/',
                    syntax = 'markdown',
                    ext = '.md',
                }
            }
        end,
    }
}
