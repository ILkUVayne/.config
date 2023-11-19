require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	  "c", "cpp", "lua", "vim", "vimdoc", "bash", "yaml", "php", "json", "html",
	  "go", "proto", "javascript", "java", "python"
  },
   highlight = { enable = true },
   indent = { enable = true },
-- 启用增量选择模块
	-- incremental_selection = {
	-- 	enable = true,
	-- 	keymaps = {
	-- 		init_selection = "<CR>",
	-- 		node_incremental = "<CR>",
	-- 		node_decremental = "<BS>",
	-- 		scope_incremental = "<TAB>",
	-- 	},
	-- },
}

-- 开启 Folding 模块 zc zo
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
