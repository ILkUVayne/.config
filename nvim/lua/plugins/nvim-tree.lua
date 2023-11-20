-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
-- project plugin 需要这样设置
  update_cwd = true,
  update_focused_file = {   
    enable = true,
    update_cwd = true,
  },
})
