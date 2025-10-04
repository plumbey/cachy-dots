local telescope = require('telescope')

telescope.setup
{
    pickers = {
        previewer = true,
    }
}

require("telescope").setup {
  pickers = {
    live_grep = {
    },

    grep_string = {
    },

    find_files = {
      previewer = true,
    },

    buffers = {
      previewer = true,
    },
    planets = {
      show_pluto = true,
      show_moon = true,
    },

    colorscheme = {
      enable_preview = true,
    },

    lsp_references = {
      initial_mode = "normal",
    },

    lsp_definitions = {
      initial_mode = "normal",
    },

    lsp_declarations = {
      initial_mode = "normal",
    },

    lsp_implementations = {
      initial_mode = "normal",
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
  },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({search = vim.fn.input("Grep >") });
end)
