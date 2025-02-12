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
map('n','<leader>U','gUawA',opt)									-- 将单词转化为大写
map('n','<leader>u','guawA',opt)									-- 将单词转化为小写	
map('n','<leader>f','a{<enter>}<c-o>O',opt)							-- 插入括号
map('n','<leader><leader>','o<C-{>k',opt)							-- 在当勤行插入空行
map('n','<leader>r',':reg<enter>',opt)								-- 显示寄存器内容
map('n','<leader>mk',':wa | make ',opt)								-- 使用make
map('n','<leader>Mk',':argadd Makefile | edit Makefile<cr>',opt)		-- 添加Makefile到参数表

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
map('n','<leader>gg',':args ',opt)
map('n','<leader>ga',':argadd ',opt)
map('n','<leader>gl',':args<enter>',opt)
map('n','<leader>gn',':next<enter>',opt)
map('n','<leader>gp',':prev<enter>',opt)

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
map('n','<leader>+','o<C-[>"+p',opt)
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
-- Buffer的快捷键
------------------------------------
map('n','<leader>bn',':bn<cr>',opt)						-- 下一个Buffer
map('n','<leader>bp',':bp<cr>',opt)						-- 上一个Buffer
map('n','<leader>bl',':ls<cr>',opt)						-- 显示Buffer列表
map('n','<leader>bd',':bdelete<cr>',opt)				-- 显示Buffer列表

------------------------------------
-- 在可视模式下复制/粘贴系统剪切板
------------------------------------
map('v','<A-v>','"+p',opt)
map('v','<A-c>','"+y',opt)

------------------------------------
--窗口模式快捷键
------------------------------------
map('n','<A-h>','<C-w>h',opt);
map('n','<A-j>','<C-w>j',opt);
map('n','<A-k>','<C-w>k',opt);
map('n','<A-l>','<C-w>l',opt);
map('n','<A-o>','<C-w>o',opt);

------------------------------------
-- 插入括号
------------------------------------
-- map("i","{"," {<cr>}<C-o>O",opt);
-- map("i","(","()<C-[>i",opt);
-- map("i","[","[]<C-[>i",opt);
-- map("i","'","''<C-[>i",opt);
-- map("i",'"','""<C-[>i',opt);
-- map("i","<","<><C-[>i",opt);
