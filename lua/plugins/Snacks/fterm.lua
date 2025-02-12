return  {
	{
		"numToStr/FTerm.nvim",
		lazy = true,
		keys = {
			 {
				 "<leader>tm",
				 mode = "n",
				 "<CMD>lua require('FTerm').toggle()<CR>",
				 desc = "open float term",
			 },
			  {
				  "<c-[>",
				  mode = "t",
				  "<C-\\><C-n>",
				  desc = "into narmal",
			  },
		},
	}
}
