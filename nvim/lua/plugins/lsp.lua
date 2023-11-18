require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = {
		"lua_ls",
		"bashls",
		"clangd",
		"cssls",
		"cssmodules_ls",
		"unocss",
		"dockerls",
		"docker_compose_language_service",
		"golangci_lint_ls",
		"gopls",
		"html",
		"helm_ls",
		"jsonls",
		"biome",
		"quick_lint_js",
		"tsserver",
		"vtsls",
		"biome",
		"jqls",
		"luau_lsp",
		"marksman",
		"prosemd_lsp",
		"remark_ls",
		"vale_ls",
		"zk",
		"intelephense",
		"psalm",
		"pyright",
		"rust_analyzer",
		"sqlls",
		"sqls",
		"volar",
		"vuels",
		"lemminx",
		"yamlls"
	},
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
