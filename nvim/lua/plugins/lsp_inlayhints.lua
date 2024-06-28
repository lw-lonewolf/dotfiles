return {
	"lvimuser/lsp-inlayhints.nvim",
	config = function()
		local lspconfig = require("lspconfig")
		local inlayhints = require("lsp-inlayhints")
		inlayhints.setup()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.clangd.setup({
			capabilities = capabilities,
			on_attach = function(client, bufnr)
				inlayhints.on_attach(client, bufnr)

				-- Enable inlay hints for clangd if supported
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.buf.inlay_hint(bufnr, true)
				end
			end,
			cmd = { "clangd", "--header-insertion=never", "--inlay-hints" },
		})
	end,
}
