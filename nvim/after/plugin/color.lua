vim.o.background = 'dark'

require('gruvbox').setup(
{
    overrides = {
	-- Change color for functions
        ["@lsp.type.function"] = { fg = "#ff7011" },
    },
    transparent_mode = "true",
    contrast = "hard"
})

vim.cmd('colorscheme gruvbox')
