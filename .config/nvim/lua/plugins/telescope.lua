return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		--Loads the telescope plugin
		local builtin = require("telescope.builtin")

		--Keymap Configuration for Telescope
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>cmd", builtin.commands, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
	end,
}
