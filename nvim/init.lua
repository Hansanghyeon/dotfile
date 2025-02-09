require('plugins')
require('mappings')

local set = vim.opt

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
-- 내 서버 vim에서는 항상 preview가 나오고 ui가 깨지는 현상이있다. 해당 옵션으로 문제를 해결할 수 있음
set.pumblend = 0
