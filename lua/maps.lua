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
map('n','<leader>r',':reg<enter>',opt)				-- 显示寄存器内容
map('n','<leader>m',':w | make ',opt)				-- 使用make
map('n','<leader>M',':argadd Makefile<cr> ',opt)	-- 添加Makefile到参数表

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
map('n','<leader>tt',':tabnew<enter>',opt)
map('n','<leader>to',':tabonly<enter>',opt)
map('n','<leader>tc',':tabclose<enter>',opt)

------------------------------------
-- 打印0~9号寄存器的内容
------------------------------------
-- 普通模式
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
map('n','<leader>+','"+p',opt)
-- 可视模式
map('v','<leader>0','"0p',opt)
map('v','<leader>1','"1p',opt)
map('v','<leader>2','"2p',opt)
map('v','<leader>3','"3p',opt)
map('v','<leader>4','"4p',opt)
map('v','<leader>5','"5p',opt)
map('v','<leader>6','"6p',opt)
map('v','<leader>7','"7p',opt)
map('v','<leader>8','"8p',opt)
map('v','<leader>9','"9p',opt)

------------------------------------
-- QiuckFix的快捷键
------------------------------------
map('n','<leader>co',':copen<enter>',opt)		-- 打开QiuckFix
map('n','<leader>cn',':cnext<enter>',opt)		-- 下一个表项
map('n','<leader>cp',':cprev<enter>',opt)		-- 上一个表项
map('n','<leader>cc',':cclose<enter>',opt)		-- 关闭QiuckFix

------------------------------------
-- Buuffer的快捷键
------------------------------------
map('n','<A-n>',':bn<cr>',opt)				-- 下一个Buffer
map('n','<A-p>',':bp<cr>',opt)				-- 上一个Buffer
map('n','<A-l>',':ls<cr>',opt)				-- 显示Buffer列表

------------------------------------
-- 在可视模式下复制/粘贴系统剪切板
------------------------------------
map('v','<A-v>','"+p',opt)
map('v','<A-c>','"+y',opt)

------------------------------------
-- 终端模式快捷键
------------------------------------
map('n','<C-t>',':terminal<enter>',opt)				-- 打开终端
map('t','<C-[>',[[<C-\><C-n>]],opt)					-- 在终端中打开普通模式
