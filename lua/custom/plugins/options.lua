vim.wo.relativenumber = true
vim.opt.shada = "!,'30,<50,s10,h"

vim.opt.foldmethod = "indent"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 0

-- This file is expected to return a plugin spec to be loaded by lazy.nvim. But
-- here we only want to set options, so we return an empty spec
return {}
