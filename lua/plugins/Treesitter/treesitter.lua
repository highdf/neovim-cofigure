return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "VeryLazy" },
		lazy = vim.fn.argc(-1) == 0, 
		init = function(plugin)
			require("lazy.core.loader").add_to_rtp(plugin)
			require("nvim-treesitter.query_predicates")
		end,
		cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
		config = function() 
			require'nvim-treesitter.configs'.setup {
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			}
		end,
	}
}
