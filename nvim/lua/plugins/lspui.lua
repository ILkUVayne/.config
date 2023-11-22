vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  -- 在输入模式下也更新提示，设置为 true 也许会影响性能
  update_in_insert = true,
})
local signs = {
	Error = " ",
	Warn = " ",
	Hint = " ",
	Info = " ",
	imp_sign = '󰳛 ',
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- local lspkind = require("lspkind")
-- lspkind.init({
--     -- DEPRECATED (use mode instead): enables text annotations
--     --
--     -- default: true
--     -- with_text = true,
--
--     -- defines how annotations are shown
--     -- default: symbol
--     -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
--     mode = 'symbol_text',
--
--     -- default symbol map
--     -- can be either 'default' (requires nerd-fonts font) or
--     -- 'codicons' for codicon preset (requires vscode-codicons font)
--     --
--     -- default: 'default'
--     preset = 'codicons',
--
--     -- override preset symbols
--     --
--     -- default: {}
--     symbol_map = {
--       Text = "󰉿",
--       Method = "󰆧",
--       Function = "󰊕",
--       Constructor = "",
--       Field = "󰜢",
--       Variable = "󰀫",
--       Class = "󰠱",
--       Interface = "",
--       Module = "",
--       Property = "󰜢",
--       Unit = "󰑭",
--       Value = "󰎠",
--       Enum = "",
--       Keyword = "󰌋",
--       Snippet = "",
--       Color = "󰏘",
--       File = "󰈙",
--       Reference = "󰈇",
--       Folder = "󰉋",
--       EnumMember = "",
--       Constant = "󰏿",
--       Struct = "󰙅",
--       Event = "",
--       Operator = "󰆕",
--       TypeParameter = "",
--     },
-- })

