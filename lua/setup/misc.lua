local telescope = require('telescope')
telescope.setup {
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = require('telescope.actions').close
            }
        }
    },
    pickers = {
        buffers = {
            mappings = {
                n = {
                    ['<c-d>'] = require('telescope.actions').delete_buffer
                },
                i = {
                    ['<c-d>'] = require('telescope.actions').delete_buffer
                }
            }
        }
    }
}
telescope.load_extension('file_browser')

-- require('nvim_comment').setup()

require('FTerm').setup({
    border     = 'rounded',
    hl         = 'NormalFloat',
    dimensions = {
        height = 0.7,
        width = 0.6,
    },
})

vim.api.nvim_create_autocmd(
    "User",
    {
        pattern = "UnceptionEditRequestReceived",
        callback = function()
            require('FTerm').toggle()
        end
    }
)

require('illuminate').configure {
    providers = {
        'treesitter',
        'lsp'
    }
}

require("nvim-surround").setup()

require('ibl').setup {
    scope = {enabled = false}
}

require('cmp').event:on(
    'confirm_done',
    require('nvim-autopairs.completion.cmp').on_confirm_done()
)

require('gitsigns').setup()

local ls = require('luasnip')
ls.add_snippets('cpp',{
    ls.snippet('cout',{
        ls.text_node('std::cout << '),
        ls.insert_node(0),
        ls.text_node(' << "\n"'),
        ls.insert_node(1),
    })
})  
