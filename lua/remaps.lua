-- Pressing S conviniently prepares a substitute
vim.api.nvim_set_keymap("n", "S", ":%s//g<Left><Left>", { noremap = true, silent = false })
-- Pressing ctrl S substitute in a visual mode selection
vim.api.nvim_set_keymap("v", "<C-s>", ":s//g<Left><Left>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<Leader>b", ":TermExec cmd=\"./project-build\"<Enter>", { noremap = true, silent = false })
-- Map <Tab> to switch to the next tab
vim.keymap.set("n", "<Tab>", "gt", { noremap = true, silent = true })
-- Map <Tab> to switch to the previous tab
vim.keymap.set("n", "<S-Tab>", "gT", { noremap = true, silent = true })
-- Move visual selection down and keep it selected
vim.keymap.set("v", "J", ":move '>+1<Enter>gv=gv", { noremap = true, silent = true })
-- Move visual selection up and keep it selected
vim.keymap.set("v", "K", ":move '<-2<Enter>gv=gv", { noremap = true, silent = true })
-- Shortcut to delete everythin after cursor
vim.keymap.set("n", "<Leader>d", "d$", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>cmain", ":-1read $HOME/.config/nvim/snippets/c-main.c<CR>9jo", { noremap = true, silent = true })
-- -- Map <Leader>el to execute Lua selection
vim.keymap.set("v", "<Leader>e", _G.utils.executeluafromselection, { noremap = true, silent = true })
-- vim.keymap.set("n", "<Leader>t", _G.utils.inserttimestamp, { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>t", ":ToggleTerm<Enter>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>z", _G.zen.zenmodetoggle, { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>a", "ys$(", { noremap = true, silent = true })
