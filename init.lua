local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim_options")
require("lazy").setup("plugins")

vim.api.nvim_set_hl(0, 'LineNr', { fg = '#e5c890' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ef9f76', bold = true })
