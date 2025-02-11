return {
	---@type LazySpec
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"<leader>y",
				"<cmd>Yazi toggle<cr>",
				desc = "Resume the last yazi session",
			},
			-- {
			-- 	"<leader>yy",
			-- 	"<cmd>:Yazi<cr>",
			-- 	desc = "open yazi",
			-- },
		},
		---@type YaziConfig
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
	}
}
