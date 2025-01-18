---------------------------------------------
-- 插件管理
---------------------------------------------
-- 准备 lazy.nvim 模块（存在性检测）

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- 使用最新稳定版本分支
        lazypath,
    })
end

-- 将 lazy 添加至 runtime path 最前端, 确保优先搜索到它提供的资源
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
	-- 主题插件
	{'navarasu/onedark.nvim'},					-- OneDark 主题
	{'tomasr/molokai'},							-- molokai主题
	
	-- UI 改善插件
	{											-- 状态栏美化
	  'nvim-lualine/lualine.nvim',
	  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
	},

	-- 常用插件
	{'tpope/vim-commentary'},					-- 注释插件
	{
      'nvim-tree/nvim-tree.lua',				-- 文件浏览插件
      dependencies = {
       	'nvim-tree/nvim-web-devicons',			-- 可选，用于文件图标
      },
      tag = 'nightly'							-- 可选，默认情况下每周更新一次
    },

	-- Markdown 插件
	{'mzlogin/vim-markdown-toc'},				-- 生成目录
	{'godlygeek/tabular'},						-- 辅助表格对齐
	{ 'plasticboy/vim-markdown'},				-- Markdown 语法高亮和支持
	{
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	},
	
})

---------------------------------------------
-- 可选
---------------------------------------------
	-- {											-- 语法高亮
	-- 	"nvim-treesitter/nvim-treesitter",
	-- },
	-- use 'dhruvasagar/vim-table-mode'            -- 表格编辑增强
	-- use 'hoobalong/vim-code-dark'				-- VSCode Dark Theme
		-- use 'Euclio/vim-markdown-compose'			-- 异步 Markdown 预览
	-- use 'iamcco/markdown-preview.nvim' { 
	-- 	run = function() vim.fn['mkdp#util#install']() end,
	-- 	ft = {'markdown'}
	-- }
		-- use 'tpope/vim-fugitive'						-- Git 功能加强
		-- use 'preservim/tagbar'						-- 代码大纲视图
		-- use 'junegunn/goyo.vim'						-- 写作模式优化
		-- use 'airblade/vim-gitgutter'					-- 显示Git变更
		-- use 'lukas-reineke/indent-blankline.nvim'	-- 缩进可视化
		--
		---- 加载 lazy.nvim 及指定初始插件集
		--
		--
