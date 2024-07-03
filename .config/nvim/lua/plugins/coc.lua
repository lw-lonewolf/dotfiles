return {
	"neoclide/coc.nvim",
	config = function()
		vim.cmd("inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : '<CR>'")
	end,
}
