-- Set leader key to space
vim.g.mapleader = ","

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable auto-indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Enable clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Set colorscheme
-- vim.cmd("colorscheme vim")
vim.opt.background = "dark" -- or "light"

-- Enable filetype detection and plugins
vim.cmd("filetype plugin indent on")

-- Set encoding to UTF-8
vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"

vim.g.zen_mode = false

-- vim.g.utils = require("utils")
_G.utils = require("utils")
_G.zen = require("zenmode")

require("pkgmanager.lazy")
require("remaps")
require("events")
