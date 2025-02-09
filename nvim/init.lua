require('plugins')
require('mappings')

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab =true
		vim.opt_local.softtabstop = 2
	end
})

-- 내 서버 vim에서는 항상 preview가 나오고 ui가 깨지는 현상이있다. 해당 옵션으로 문제를 해결할 수 있음
vim.o.pumblend = 0
