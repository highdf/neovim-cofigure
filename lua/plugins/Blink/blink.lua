return {
	{
		'saghen/blink.cmp',
		dependencies =  {
			'rafamadriz/friendly-snippets',

			'echasnovski/mini.icons', version = '*',
		},

		version = '*',
		event = "InsertEnter",

		opts = {
			keymap = { 
				preset = 'default' ,
			},

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = 'mono'
			},

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},

			completion = {
				accept = {
					-- experimental auto-brackets support
					auto_brackets = {
						enabled = false,
					},
				},
				menu = {
					min_width = 18,
					max_height = 12,
					border = 'none',
					winblend = 0,
					border = 'single',
					auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
					draw = {
						treesitter = { "lsp" },
						components = {
							kind_icon = {
								ellipsis = false,
								text = function(ctx)
									local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
									return kind_icon
								end,
								-- Optionally, you may also use the highlights from mini.icons
								highlight = function(ctx)
									local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
									return hl
								end,
							}
						}
					},
				},
				documentation = {
					window = { border = 'single' },
					auto_show = true,
					auto_show_delay_ms = 200,
				},
			},
			signature = { window = { border = 'single' } },
		},
		opts_extend = { "sources.default" },
	},

	-- {
	-- 	'neovim/nvim-lspconfig',
	-- 	dependencies = { 'saghen/blink.cmp' },
	-- 	event = "InsertEnter",
	--
	-- 	opts = {
	-- 		servers = {
	-- 			lua_ls = {clangd}
	-- 		}
	-- 	},
	-- 	config = function(_, opts)
	-- 		local lspconfig = require('lspconfig')
	-- 		for server, config in pairs(opts.servers) do
	-- 			-- passing config.capabilities to blink.cmp merges with the capabilities in your
	-- 			-- `opts[server].capabilities, if you've defined it
	-- 			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
	-- 			lspconfig[server].setup(config)
	-- 		end
	-- 	end,
	--
	-- 	-- example calling setup directly for each LSP
	-- 	config = function()
	-- 		local capabilities = require('blink.cmp').get_lsp_capabilities()
	-- 		local lspconfig = require('lspconfig')
	--
	-- 		lspconfig['lua_ls'].setup({ capabilities = capabilities })
	-- 	end
	-- },
}
