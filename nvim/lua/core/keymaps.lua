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
keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>")

-- navigator
-- keymap.set({'n', 't'}, '<C-h>', '<CMD>NavigatorLeft<CR>')
-- keymap.set({'n', 't'}, '<C-l>', '<CMD>NavigatorRight<CR>')
-- keymap.set({'n', 't'}, '<C-k>', '<CMD>NavigatorUp<CR>')
-- keymap.set({'n', 't'}, '<C-j>', '<CMD>NavigatorDown<CR>')
-- keymap.set({'n', 't'}, '<C-p>', '<CMD>NavigatorPrevious<CR>')

-- 切换buffer
keymap.set("n", "<A-l>", ":bnext<CR>")
keymap.set("n", "<A-h>", ":bprevious<CR>")

-- 快速保存
keymap.set("n", '<leader>w', ':w<CR>')
keymap.set("n", '<leader>q', ':q<CR>')
keymap.set("n", '<leader>W', ':wq<CR>')

-- floaterm
keymap.set("n", "<C-T>", ":FloatermNew<CR>")
keymap.set("n", "<C-t>", ":FloatermToggle<CR>")
keymap.set("n", "<leader>nt", ":FloatermNext<CR>")
keymap.set("n", "<leader>pt", ":FloatermPrev<CR>")
keymap.set("n", "<leader>lt", ":FloatermNew lazygit<CR>")

-- markdown preview 
keymap.set("n", "<leader>mk", ":MarkdownPreviewToggle<CR>")

-- lspsaga
-- Callhierarchy
keymap.set("n", "[ci", ":Lspsaga incoming_calls<CR>")
keymap.set("n", "]ci", ":Lspsaga outgoing_calls<CR>")
-- Code Action
keymap.set("n", "[ac", ":Lspsaga code_action<CR>")
-- Definition
keymap.set("n", "[pk", ":Lspsaga peek_definition<CR>")
keymap.set("n", "]pk", ":Lspsaga peek_type_definition<CR>")
keymap.set("n", "[gd", ":Lspsaga goto_definition<CR>")
keymap.set("n", "]gd", ":Lspsaga goto_type_definition<CR>")
-- Diagnostic
keymap.set("n", "[w", ":Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "]w", ":Lspsaga diagnostic_jump_prev<CR>")
-- Finder
keymap.set("n", "[f", ":Lspsaga finder<CR>")
-- Hover doc
keymap.set("n", "[h", ":Lspsaga hover_doc<CR>")
keymap.set("n", "]h", ":Lspsaga hover_doc ++keep<CR>")
-- find impl
keymap.set("n", "[i", ":Lspsaga finder imp<CR>")
-- outline
keymap.set("n", "[o", ":Lspsaga outline<CR>")
