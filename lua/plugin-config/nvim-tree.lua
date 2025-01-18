------------------------------------
-- tree.lua配置
------------------------------------
vim.g.loaded_netrw = 1					-- 关闭netrw
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({			-- 常用设置
	sort_by = "case_sensitive",			-- 排序规则：区分大小写
	-- hijack_cursor = true,				-- 切换缓冲区时移动光标到相应位置
	view = {
		width = 25,						-- 文件树宽度为25
	},
	renderer = {
		group_empty = false,			-- 是否隐藏空组
	},
	filters = {
		dotfiles = true,
		-- custom = {'^\..*'},				-- 忽略以.开头的文件
	},
})

------------------------------------
-- 快捷键设置
------------------------------------
local map = vim.api.nvim_set_keymap							-- 设置变量
local opt = {noremap = true, silent = true }

map('n','<leader><space>',':NvimTreeFocus<enter>',opt)		-- 聚焦文件树
map('n','<leader>N',':NvimTreeFindFileToggle<enter>',opt)	-- 打开或关闭目录树
