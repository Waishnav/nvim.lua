local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- global search
vim.keymap.set('n', '<leader>s', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- global live search
vim.keymap.set('n', '<leader>ls', function()
    builtin.live_grep({ search = vim.fn.input("Grep > ") });
end)

-- list project buffer files
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

require('telescope').setup({
    defaults = {
        file_ignore_patterns = { 'node_modules', },
    }
})
