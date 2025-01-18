---------------------------------------------
-- 插件管理
---------------------------------------------
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'			-- Packer 自身也是一个插件

	-- 主题插件
	use 'tomasr/molokai'						-- molokai主题
	use 'navarasu/onedark.nvim'                 -- OneDark 主题

	-- UI 改善插件
	use {										-- 状态栏美化
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- 常用插件
	use 'tpope/vim-commentary'					-- 注释插件
	use {
        'nvim-tree/nvim-tree.lua',				-- 文件浏览插件
        requires = {
            'nvim-tree/nvim-web-devicons',		-- 可选，用于文件图标
        },
        tag = 'nightly'							-- 可选，默认情况下每周更新一次
    }

	-- Markdown 插件
	use 'mzlogin/vim-markdown-toc'				-- 生成目录
	use 'godlygeek/tabular'                     -- 辅助表格对齐
	use 'plasticboy/vim-markdown'               -- Markdown 语法高亮和支持
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

end)

---------------------------------------------
-- 可选
---------------------------------------------
	-- use {										-- 语法高亮
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	run = ":TSUpdate",
	-- }
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
