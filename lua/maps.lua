------------------------------------
-- 起始设置
------------------------------------
vim.g.mapleader = "\\"							-- 设置<leader>为'\'
vim.g.maplocalleader = "\\"
local map = vim.api.nvim_set_keymap				-- 设置变量
local opt = {noremap = true, silent = true }

------------------------------------
-- 常用快捷键
------------------------------------
map('n','<leader>U','gUawA',opt)					-- 将单词转化为大写
map('n','<leader>u','guawA',opt)					-- 将单词转化为小写	
map('n','<leader><leader>','o<C-{>k',opt)			-- 在当勤行插入空行
map('n','<leader>f','a{<enter>}<C-{>O',opt)			-- 在()后添加{}
map('n','<leader>b','i{<enter>}<C-{>O',opt)			-- 添加空代码快
map('n','<leader>e',':tabedit error<enter>',opt)	-- 添加error文件
map('n','<leader>r',':reg<enter>',opt)				-- 显示寄存器内容
map('n','<leader>T',':terminal<enter>',opt)			-- 打开终端

------------------------------------
-- 包裹文本删除
------------------------------------
map('n','<leader>(','ci(',opt)
map('n','<leader>[','ci[',opt)
map('n','<leader>{','ci{',opt)
map('n',"<leader>'","ci'",opt)
map('n','<leader>"','ci"',opt)
map('n','<leader><','ci<',opt)

------------------------------------
-- 参数列表快捷键
------------------------------------
map('n','<leader>g',':args ',opt)
map('n','<leader>a',':argadd ',opt)
map('n','<leader>l',':args<enter>',opt)
map('n','<leader>n',':next<enter>',opt)
map('n','<leader>p',':prev<enter>',opt)

------------------------------------
-- 标签页快捷键
------------------------------------
map('n','<leader>t',':tabnew<enter>',opt)
map('n','<leader>o',':tabonly<enter>',opt)
map('n','<leader>c',':tabclose<enter>',opt)

------------------------------------
-- 打印0~9号寄存器的内容
------------------------------------
map('n','<leader>0','"0p',opt)
map('n','<leader>1','"1p',opt)
map('n','<leader>2','"2p',opt)
map('n','<leader>3','"3p',opt)
map('n','<leader>4','"4p',opt)
map('n','<leader>5','"5p',opt)
map('n','<leader>6','"6p',opt)
map('n','<leader>7','"7p',opt)
map('n','<leader>8','"8p',opt)
map('n','<leader>9','"9p',opt)
