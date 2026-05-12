return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    vim.keymap.set("n", "<Leader>f", ":FzfLua grep <Enter>", { noremap = true, silent = false })
  end,
}
