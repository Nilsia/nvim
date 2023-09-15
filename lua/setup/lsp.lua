local lsp = require("lspconfig")

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = on_attach,
    }, _config or {})
end

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
    border = 'rounded',
})
 require('nvim-search-and-replace').setup(config())

require('lsp_extensions').inlay_hints{  highlight = "Comment",
	prefix = " > ",
	aligned = false,
	only_current_line = false,
        enabled =  {"TypeHint", "ChainingHint", "ParameterHint"}
    }
-- C++
lsp.clangd.setup(config())

-- Python
lsp.pylsp.setup(config(
    {
        settings = {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        ignore = { 'E501' },
                    }
                }
            }
        }
    }
))


-- Rust
lsp.rust_analyzer.setup(config({
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
}))

-- bash
lsp.bashls.setup(config())
lsp.efm.setup(config({
    filetypes = { 'sh' },
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {formatCommand = "lua-format -i", formatStdin = true}
            }
        }
    }
}))

-- PHP               
lsp.intelephense.setup(config())

-- HTML
lsp.html.setup(config())

-- CSS
lsp.cssls.setup(config())

-- TYPST 
lsp.typst_lsp.setup(config())

-- DART 
lsp.dartls.setup(config())

-- JAVASCRIPT
lsp.tsserver.setup(config({
    single_file_support = true
}))

-- JSON
lsp.jsonls.setup(config())
--
-- lsp.comment.setup(config())
