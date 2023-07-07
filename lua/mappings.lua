local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-s>', '<CMD>write<cr>', opts)
map('n', '<c-q>', '<CMD>quit<cr>', opts)
map('n', '<s-u>', '<CMD>redo<cr>', opts)
map('n', '<A-d>', '<CMD>bdelete!<cr>', opts)
map('n', 'gp', '<CMD>bprevious<cr>', opts)
map('n', 'gn', '<CMD>bnext<cr>', opts)
-- map('n', 'c-n', ':Alpha', opts)
map('n', '<c-p>', '<c-e>', opts);

map('n', '<c-f>', '<CMD>lua vim.lsp.buf.format()<cr>', opts)
map('n', '<c-a>', '<CMD>lua vim.lsp.buf.code_action()<cr>', opts)
map('n', '<c-r>', '<CMD>lua vim.lsp.buf.rename()<cr>', opts)
map('n', '<c-h>', '<CMD>lua vim.lsp.buf.hover()<cr>', opts)
map('n', '<c-j>', '<CMD>lua vim.lsp.buf.definition()<cr>', opts)

map('n', '<A-o>', '<c-o>', opts)
map('n', '<A-i>', '<c-i>', opts)

map('n', '<c-o>', '<CMD>lua require("telescope").extensions.file_browser.file_browser()<cr>', opts)
map('n', '<c-e>', '<CMD>lua require("telescope.builtin").diagnostics()<cr>', opts)
map('n', '<c-b>', '<CMD>lua require("telescope.builtin").buffers()<cr>', opts)

map('n', '<c-t>', '<CMD>lua require("FTerm").toggle()<cr>', opts)
map('t', '<esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<cr>', opts)

map('n', '<A-p>', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

map('n', '<s-o>', 'o<esc>', opts);

map('n', '<A-a>', '$li;<esc>', opts)
map('i', '<A-a>', '<esc>$li;<esc>', opts)

-- mappings search and replace
-- map('n', <g-u>, )

