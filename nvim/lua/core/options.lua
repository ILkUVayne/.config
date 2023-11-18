local vo = vim.o
local vbo = vim.bo
local opt = vim.opt


-- 基础配置

-- 缩进
vo.tabstop = 4
vbo.tabstop = 4
vo.softtabstop = 4
vo.shiftwidth=4
vo.shiftround = true

-- 行号
opt.number = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true
-- 启用鼠标

opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

vim.cmd[[colorscheme tokyonight-moon]]
