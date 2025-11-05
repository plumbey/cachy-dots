return {
    { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true, opts = ...},
    { "rose-pine/neovim", name = "rose-pine" },
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
}
