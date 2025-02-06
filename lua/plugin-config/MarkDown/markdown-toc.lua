------------------------------------
-- Toc配置
------------------------------------
local map = vim.api.nvim_set_keymap				-- 设置变量
local opt = {noremap = true, silent = true }

map('n','<leader>G',':GenTocGFM<enter>',opt)
