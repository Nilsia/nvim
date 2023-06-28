require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
    auto_install = true,
    highlight = {
        enable = true,
    },
    context_commetstring = {
        enable = true,
        enable_autocmd = false,
    },
}
