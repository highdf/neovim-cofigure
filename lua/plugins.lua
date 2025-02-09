---------------------------------------------
-- 插件管理
---------------------------------------------
-- 将 lazy 添加至 runtime path 最前端, 确保优先搜索到它提供的资源
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

return require('lazy').setup({
	-- 主题插件
	{
		"catppuccin/nvim", name = "catppuccin",		-- catppuccin主题
		'projekt0n/github-nvim-theme', name = 'github-theme'
	},

	-- UI 改善插件
	{												-- 状态栏美化
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
		'kdheepak/tabline.nvim',
		"nvim-treesitter/nvim-treesitter",			-- 语法高粱插件
		build = ":TSUpdate",
		{
			"keaising/im-select.nvim",
			config = function()
				require("im_select").setup({})
			end,
		},
	},

	-- 常用插件
	{
		'numToStr/Comment.nvim',					-- 注释插件
		'nvim-tree/nvim-tree.lua',					-- 文件浏览插件
		dependencies = {
			'nvim-tree/nvim-web-devicons',			-- 可选，用于文件图标
		},
		tag = 'nightly',							-- 可选，默认情况下每周更新一次
		"kylechui/nvim-surround",					-- 括号操作插件
		version = "*", 	
		event = "VeryLazy",
		"numToStr/FTerm.nvim",
		"yioneko/nvim-yati", tag = "*",
	},					

	-- Markdown 插件
	{
		'mzlogin/vim-markdown-toc',					-- 生成目录
		'godlygeek/tabular',						-- 辅助表格对齐
		'plasticboy/vim-markdown',					-- Markdown 语法高亮和支持
		"iamcco/markdown-preview.nvim",				-- 预览插件
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- 调试插件
	{
		-- "mfussenegger/nvim-dap",
		-- 'nvim-neotest/nvim-nio',
		-- 'sakhnik/nvim-gdb',
		-- "rcarriga/nvim-dap-ui",
	},

	-- latex插件
	{
	  -- "lervag/vimtex",
	  -- lazy = false,     -- we don't want to lazy load VimTeX
	},

	-- 补全插件
	{
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },

		'onsails/lspkind-nvim',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		"williamboman/mason.nvim",
	},
})

---------------------------------------------
-- 可选
---------------------------------------------
-- "williamboman/mason-lspconfig.nvim",
-- 'L3MON4D3/LuaSnip',
-- 'saadparwaiz1/cmp_luasnip',
-- 'navarasu/onedark.nvim',					-- OneDark 主题
-- 'tomasr/molokai',							-- molokai主题
-- 'neoclide/coc.nvim', branch = 'release',
