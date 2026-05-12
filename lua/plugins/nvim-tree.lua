return {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: for file icons
        config = function()
            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = false,
                    enable = false,
                },
            }) -- Initialize nvim-tree
            vim.keymap.set("n", "<Leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
        end,
}


