return {
	{
		'mzlogin/vim-markdown-toc',					-- 生成目录
		lazy = true,
		-- fr = {"markdown"},
	},

	{
		'godlygeek/tabular',						-- 辅助表格对齐
		lazy = true,
		fr = {"markdown"},
	},

	{
		'plasticboy/vim-markdown',					-- Markdown 语法高亮和支持
		lazy = true,
		fr = {"markdown"},
	},

	{
		-- "tadmccorkle/markdown.nvim",
		-- ft = "markdown", -- or 'event = "VeryLazy"'
		-- opts = {
		-- 	-- configuration here or empty for defaults
		-- },
	}

}
