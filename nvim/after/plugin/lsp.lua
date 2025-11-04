local coq = require('coq')

vim.lsp.enable('clangd')

vim.lsp.config('lua_ls',{
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('asm_lsp')
