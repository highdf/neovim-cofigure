return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
			indent = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scroll = { enabled = true },
			input = {enabled = true,},
			-- explorer = { enabled = true },
			-- terminal = {
			-- 	enabled = true,
			-- 	win = { style = "terminal" },
			-- },
		},
		keys = {
			-- termial
			-- {"<leader>st",mode = {"n"},function() Snacks.terminal.toggle() end,desc = "open/close ter"},
			-- {"<C-[>",mode = {"t"},"<C-\\><C-n>",desc = "into narmal mode"},
			-- notifier
			{"<leader>sn",mode = {"n"},function() Snacks.notifier.show_history() end,desc = "show history"},
		},
	}
}
