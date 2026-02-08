return {
    { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true, opts = ...},
    { "rose-pine/neovim", name = "rose-pine" },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate'
    },  
    { 'brianhuster/live-preview.nvim',
        dependencies = {'nvim-telescope/telescope.nvim'},
    },
    { 
        'neovim/nvim-lspconfig',
        lazy = false,
        dependencies = {
            { 'ms-jpq/coq_nvim', branch = 'coq' },
            { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
            { 'ms-jpq/coq.thirdparty', branch = '3p' },
    },
        init = function()
            vim.g.coq_settings = {
                auto_start = 'shut-up',
            }
        end,
        config = function()
        end
    },
    {
      "folke/trouble.nvim",
      opts = {}, -- for default options, refer to the configuration section for custom setup.
      cmd = "Trouble",
      keys = {
        {
          "<leader>tr",
          "<cmd>Trouble diagnostics toggle focus=true<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>ts",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>tl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>tp",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>tq",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    },
    { 'm4xshen/autoclose.nvim', opts = {}, },
    { 'folke/zen-mode.nvim' },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        ---@module 'ibl'
        ---@type ibl.config
        opts = {},
    }
}
