return {
    { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true, opts = ...},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-telescope/telescope-file-browser.nvim' },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'brianhuster/live-preview.nvim',
        dependencies = {'nvim-telescope/telescope.nvim'},
    },
    { 'https://github.com/neovim/nvim-lspconfig' },
}
