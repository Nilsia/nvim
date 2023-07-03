require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
    auto_install = true,
    highlight = {
        enable = false,
    },
    context_commetstring = {
        enable = true,
        enable_autocmd = false,
    },
}
