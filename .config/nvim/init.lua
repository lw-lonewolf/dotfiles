vim.g.mapleader = " "
require("config.lazy")
--Loads the plugins and their options
---@diagnostic disable-next-line: different-requires
require("lazy").setup("plugins")
