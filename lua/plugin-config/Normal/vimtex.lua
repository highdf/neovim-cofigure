-- ~/.config/nvim/lua/config/vimtex.lua

-- Set global variables for vimtex
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'zathura'     -- 如果你使用 Skim 查看 PDF
vim.g.vimtex_compiler_progname = 'latexmk'
vim.g.vimtex_compiler_latexmk_engines = {
	_ = '-xelatex',						 -- 默认使用 xelatex
}
vim.g.vimtex_quickfix_mode = 0			 -- 关闭quickfix同步
vim.g.vimtex_syntax_enabled = 1			 -- 开启语法高亮
vim.g.vimtex_indent_enabled = 1			 -- 开启缩进处理
vim.g.vimtex_context_conceal_level = 2	 -- 设置 ConcealLevel
vim.g.vimtex_fold_enabled = 1			 -- 折叠 TeX 布局结构
vim.g.vimtex_toc_config_sort = 1		 -- 目录排序

-- Key mappings specific to vimtex
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>lc', ':VimtexCompile<CR>', opts)		-- Compile document
map('n', '<leader>ls', ':VimtexStop<CR>', opts)			-- Stop compilation process
map('n', '<leader>lv', ':VimtexView<cr>', opts)			-- Open compiled PDF using evince
map('n','<leader>ll',':VimtexClean<cr>',opts)			-- clean files

-- vimtex 配置选项
-- vim.g.vimtex_mappings_enabled = 1      -- 启用默认映射
-- vim.g.vimtex_spell_language = 'en_us,en_gb,zh_cn.utf8'  -- 多语言拼写检查
-- map('n', '[q', ':cprev<CR>', opts)                         -- Go to previous error or warning
-- map('n', ']q', ':cnext<CR>', opts)                         -- Go to next error or warning
-- map('n', '<leader>r', ':VimtexReloadState<CR>', opts)       -- Reload state
--if !exists('b:g:vimtex_engine_xelatex_options')
-- map('n', '<leader>lt', '\\TableOfContents{}<++><ESC>i', opts) -- Insert table of contents macro
-- map('n', '<leader>le', '\\label{sec:<++>}<++><ESC>i', opts) -- Insert label macro
