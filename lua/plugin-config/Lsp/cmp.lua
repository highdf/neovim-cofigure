local cmp = require'cmp'
local lspkind = require'lspkind'
local luasnip = require("luasnip")

cmp.setup({
	completion = {
		autocomplete = false,              -- 禁止自动补全
	},
	snippet = {
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_only', -- 显示图标
			preset = 'codicons', -- 使用 Codicon 图标
			ellipsis_char = '...', -- 使用 … 作为省略符
			maxwidth = 15, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
		}),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		-- { name = 'vsnip' }, -- For vsnip users.
	  { name = 'luasnip' },
	}, {
			{ name = 'buffer' },
		})
	})

-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- Set configuration for specific filetype.
--[[ cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
	  { name = 'git' },
	}, {
	  { name = 'buffer' },
	})
 })
 require("cmp_git").setup() ]]-- 

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
			{ name = 'cmdline' }
		}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

-- 设置 lspconfig。
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- 替换 <YOUR_LSP_SERVER> 为您已启用的每个 lsp 服务器。
require'lspconfig'['clangd'].setup {
    capabilities = capabilities,
}
require'lspconfig'['jdtls'].setup {
    capabilities = capabilities,
}


