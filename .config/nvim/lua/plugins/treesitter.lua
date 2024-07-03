--TreeSitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		--TreeSitter Config
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_installed = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
