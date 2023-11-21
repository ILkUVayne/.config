local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{"nvim-treesitter/nvim-treesitter"},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {"nvim-tree/nvim-web-devicons", opt = true},
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {"nvim-tree/nvim-web-devicons"},
	},
	{"christoomey/vim-tmux-navigator"},
	{
		"williamboman/mason.nvim"
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"neovim/nvim-lspconfig"
	},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-buffer"},
	{"hrsh7th/cmp-path"},
	{"hrsh7th/cmp-cmdline"},
	{"hrsh7th/nvim-cmp"},
	{
		"L3MON4D3/LuaSnip"
	},
	{"saadparwaiz1/cmp_luasnip"},
	{"rafamadriz/friendly-snippets"},
	{"numToStr/Comment.nvim"}, -- gcc和gc注释
	{"windwp/nvim-autopairs"}, -- 自动补全括号
	{"akinsho/bufferline.nvim"}, -- buffer分割线
	{"lewis6991/gitsigns.nvim"}, -- 左则git提示
	{"nvim-lua/plenary.nvim"},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{"glepnir/dashboard-nvim"},
	{"ahmedkhalf/project.nvim"},

	{"voldikss/vim-floaterm"},

	{
		"iamcco/markdown-preview.nvim",
		build = function() vim.fn["mkdp#util#install"]() end,
	},
	-- go
	{
		"jose-elias-alvarez/null-ls.nvim",
		ft = "go",
	},
	{"mfussenegger/nvim-dap"},
	{
		"leoluz/nvim-dap-go",
		-- "dreamsofcode-io/nvim-dap-go",
		ft = "go",
		dependencies = {"mfussenegger/nvim-dap"}
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {"mfussenegger/nvim-dap"}
	},
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		config = function(_, opts)
			require("gopher").setup(opts)
		end,
		build = function()
			vim.cmd [[silent! GoInstallDeps]]
		end,
	},
}

local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
