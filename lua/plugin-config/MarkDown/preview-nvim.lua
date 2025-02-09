------------------------------------
-- preview-nvim配置
------------------------------------
local map = vim.api.nvim_set_keymap							-- 设置变量
local opt = {noremap = true, silent = true }

map('n','mp',':MarkdownPreviewToggle<enter>',opt)	 -- 打开或关闭预览窗口
