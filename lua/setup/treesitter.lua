require('nvim-treesitter.configs').setup {
    auto_install = true,
    highlight = {
        enable = true,
    },
    context_commetstring = {
        enable = true,
        enable_autocmd = false,
    },
}
