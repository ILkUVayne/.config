vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("i", "jk", "<ESC>")

------ 视觉模式 ------
-- 单行多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

------ 正常模式 ------
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree 
keymap.set("n", "tr", ":NvimTreeToggle<CR>")

-- navigator
keymap.set({'n', 't'}, '<C-h>', '<CMD>NavigatorLeft<CR>')
keymap.set({'n', 't'}, '<C-l>', '<CMD>NavigatorRight<CR>')
keymap.set({'n', 't'}, '<C-k>', '<CMD>NavigatorUp<CR>')
keymap.set({'n', 't'}, '<C-j>', '<CMD>NavigatorDown<CR>')
keymap.set({'n', 't'}, '<C-p>', '<CMD>NavigatorPrevious<CR>')

-- 切换buffer
keymap.set("n", "<A-l>", ":bnext<CR>")
keymap.set("n", "<A-h>", ":bprevious<CR>")
