local dap, dapui = require("dap"), require("dapui")
dapui.setup({
	layouts = {
		{
			elements = {
				{ id = 'scopes', size = 0.35 },
				{ id = "stacks", size = 0.35 },
				{ id = "watches", size = 0.15 },
				{ id = "breakpoints", size = 0.15 },
			},
			size = 40,
			position = "left",
		},
		{
			elements = { "repl" },
			size = 5,
			position = "bottom",
		},
	},
    floating = {
        border      = 'rounded',  -- 边框样式可以选择 none/single/double/rounded/shadow/curved/vintage/custom
        max_height  = 0.5,          -- 最大高度占屏幕的70%
        max_width   = 0.5,          -- 最大面积占屏幕的60%
    }
})
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
-- dap.listeners.before.launch.dapui_config = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated.dapui_config = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited.dapui_config = function()
--   dapui.close()
-- end
