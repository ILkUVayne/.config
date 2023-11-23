local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<F5>", ":lua require'dap'.continue()<CR>", { silent = true})
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", { silent = true})
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", { silent = true})
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", { silent = true})
map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { silent = true})
map("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = true})
map("n", "<leader>l", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", { silent = true})

map("n", "<leader>nx", ":DapStepOver<CR>", { silent = true })
map("n", "<leader>dus", ":lua require'dap.ui.widgets'.sidebar(require'dap.ui.widgets'.scopes).open()<CR>", { silent = true })
map("n", "<leader>dtm", ":lua require'dap'.terminate()<CR>", { silent = true })

-- dap-ui key map
map("n", "<C-A-u>", ":lua require'dapui'.toggle()<CR>", { silent = true})
-- map("n", "<leader>uif", ":lua require'dapui'.eval()<CR>", { silent = true})

-- dap-go key map
map("n", "<leader>dgt", ":lua require'dap-go'.debug_test()<CR>", { silent = true })
map("n", "<leader>dgl", ":lua require('dap-go').debug_last_test()<CR>", { silent = true })
