local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<C-w><C-w>', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', function()
	vim.cmd(':Telescope live_grep search_dirs=.')
	--builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})

