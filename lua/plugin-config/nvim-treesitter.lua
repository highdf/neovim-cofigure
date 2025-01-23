------------------------------------
-- treesitter.lua配置
------------------------------------
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		-- additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	},
	-- foldenable = true,               -- 启用折起功能
	-- incremental_selection = {
	-- 	enable = true,
	-- 	keymaps = {
	-- 		init_selection = "<cr>",
	-- 		node_incremental = "<cr>",
	-- 		scope_incremental = "<tab>",
	-- 		node_decremental = "<bs>"
	-- 	},
	-- },
}

