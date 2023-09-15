local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


return require('lazy').setup({
    --  { 'wbthomason/packer.nvim' },

    -- [[ Theme ]]
     { 'folke/tokyonight.nvim', config = function()
        vim.cmd [[ colorscheme tokyonight-night ]]
    end, }, --colorscheme
     { 'kyazdani42/nvim-web-devicons' }, --icons
     { 'goolord/alpha-nvim' },

    -- [[ Dev ]]
     { 'neovim/nvim-lspconfig' }, --lsp
     { 'nvim-treesitter/nvim-treesitter'  }, --treesitter
     -- run = ':TSUpdateSync'

    -- [[ Cmp ]]
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            -- snippets
            { 'L3MON4D3/LuaSnip',
        version = "2.*"},
            -- utils
            { 'onsails/lspkind-nvim' },
        },
    },

    -- [[ Misc ]]
     { --fuzzy-finder
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

     { 'nvim-telescope/telescope-file-browser.nvim' },
     { 'numToStr/FTerm.nvim' }, --floating terminal
     { 'lukas-reineke/indent-blankline.nvim' }, --indent viewer
     { 'windwp/nvim-autopairs' }, --autopairs
     { 'RRethy/vim-illuminate' }, --highlights word under cursor
     { 'lewis6991/gitsigns.nvim' }, --git
     { 'samjwill/nvim-unception' }, --terminal unception

     {'kaarmu/typst.vim', ft = {'typst'}}, -- for typst

     { 'saadparwaiz1/cmp_luasnip' },
     {'rafamadriz/friendly-snippets'}, -- snippets

    -- surround text with custom text
    {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    },

    --  { 'terrortylor/nvim-comment' },

    --  {"numToStr/Comment.nvim"}, -- Easily comment stuff
    --  {"JoosepAlviste/nvim-ts-context-commentstring"},

    --  {
    --     'numToStr/Comment.nvim',
    --     config = function()
    --         require('Comment').setup()
    --     end
    -- },
    -- [[ Mini ]]
     { 'echasnovski/mini.nvim' }, --mini bundle

     { 'nvim-lua/lsp_extensions.nvim' }, -- extensions for rust, TypeHint

    -- [[ Test ]]
     { 'elkowar/yuck.vim' },

     { 's1n7ax/nvim-search-and-replace' }, -- search and replace plugin

     {
        'akinsho/flutter-tools.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    },

      {
        "danymat/neogen",
        config = function()
            require('neogen').setup ({ snippet_engine = "luasnip" })
        end,
        dependencies = "nvim-treesitter/nvim-treesitter",
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    },

    -- if packer_bootstrap then
    --     require('packer').sync()
    -- end
})
