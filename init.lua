------------------------------------
-- 包含的子模块
------------------------------------
require('basic')				-- 基本配置文件
require('maps')					-- 快捷键文件
require('plugins')				-- lazy包管理器文件
require('colorchemes')			-- 主题配色文件
------------------------------------
-- 插件配置集
------------------------------------
-- Normal 
require('plugin-config.Normal.Comment')				-- Comment插件
require('plugin-config.Normal.nvim-tree')			-- tree插件
require('plugin-config.Normal.surrond')				-- surrond插件
require('plugin-config.Normal.dressing')			-- dressing插件

-- Style 
require('plugin-config.Style.lualine')				-- lualine插件
require('plugin-config.Style.tabline')				-- tabline插件
require('plugin-config.Style.nvim-treesitter')		-- treesitter插件

-- MarkDown 
require('plugin-config.MarkDown.markdown-toc')		-- markdown插件
require('plugin-config.MarkDown.preview-nvim')		-- preview插件

-- Lsp 
require('plugin-config.Lsp.cmp')					-- cmp配置
require('plugin-config.Lsp.lspkind')				-- lspkind配置 

-- 可选
-- Dap 
-- require('plugin-config.Dap.dap')						-- dap配置文件
-- require('plugin-config.Dap.dap-ui')					-- dap-ui配置文件
-- require('plugin-config.Dap.config.dap-c')			-- c语言调试器

-- require('plugin-config.Normal.vimtex')				-- vimtex插件
