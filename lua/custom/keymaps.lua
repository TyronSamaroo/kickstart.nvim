vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })

-- Close the current tab
vim.api.nvim_set_keymap('n', '<Leader>tc', ':tabclose<CR>', {noremap = true})

-- Move to the previous tab
vim.api.nvim_set_keymap('n', '<Leader>tp', ':tabprevious<CR>', {noremap = true})

-- Open a new tab
vim.api.nvim_set_keymap('n', '<Leader>tn', ':lua OpenFileInNewTab()<CR>', {noremap = true, desc = "New Tab for A File"})

function OpenFileInNewTab()
    local file_path = vim.fn.input('File path: ')
    if file_path ~= '' then
        vim.cmd('tabnew ' .. file_path)
    end
end