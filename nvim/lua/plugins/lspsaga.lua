require('lspsaga').setup({
	code_action = {
		extend_gitsigns = true,
	},
	-- implement = {
	-- 	enable = true,
	-- 	sign = true,
	-- 	virtual_text = true,
	-- 	priority = 100,
	-- },
	imp_sign = '󰳛 ',
})

-- local lspsaga = require 'lspsaga'
-- lspsaga.setup { -- defaults ...
-- 	-- diagnostic sign
-- 	error_sign = "",
-- 	warn_sign = "",
-- 	hint_sign = "",
-- 	infor_sign = "",
-- imp_sign = '󰳛 ',
-- 	diagnostic_header_icon = "   ",
--
-- }

