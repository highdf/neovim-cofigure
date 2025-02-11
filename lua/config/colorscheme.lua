local hour = tonumber(vim.fn.strftime("%H"))

-- tokyonight
-- if hour >= 6 and hour < 18 then
-- 	vim.cmd([[colorscheme tokyonight-day]])
-- 	vim.cmd([[colorscheme tokyonight-moon]])
-- 	options = { theme = 'tokyonight-moon' }
-- else
-- 	vim.cmd([[colorscheme tokyonight-day]])
-- 	options = { theme = 'tokyonight-day' }
-- end

-- catppuccin
if hour >= 6 and hour < 18 then
	vim.cmd([[colorscheme catppuccin-latte]])
	options = { theme = 'catppuccin-latte' }
else
	vim.cmd([[colorscheme catppuccin-mocha]])
	options = { theme = 'catppuccin-mocha' }
end
