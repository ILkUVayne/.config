require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	  "c", "cpp", "lua", "vim", "vimdoc", "bash", "yaml", "php", "json", "html",
	  "go", "proto", "javascript", "java", "python"
  },
   highlight = { enable = true },
   indent = { enable = true },
}
