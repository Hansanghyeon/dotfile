function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, commnad)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, commnad)
  map('c', shortcut, commnad)
end

function tmap(shortcut, commnad)
  map('t', shortcut, command)
end

-- PLUGIN
-- Find files using Telescope command-line sugar.
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grap<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>gh', '<cmd>Telescope help_tags<cr>')
