------------------------------------
-- 包含的子模块
------------------------------------
require('plugins')				-- Packer包管理器文件
require('basic')				-- 基本配置文件
require('maps')					-- 快捷键文件
require('colorchemes')			-- 主题配色文件
------------------------------------
-- 插件配置文集
------------------------------------
require('plugin-config.lualine')				-- lualine插件
require('plugin-config.markdown-toc')			-- markdown插件
require('plugin-config.preview-nvim')			-- preview插件
require('plugin-config.nvim-tree')				-- tree插件
require('plugin-config.nvim-comment')			-- nvim-comment插件

-- 可选
-- ~/.config/nvim/init.lua
-- require('plugin-config.nvim-treesitter')		-- treesitter插件
