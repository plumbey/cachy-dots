vim.o.background = 'dark'

--stausbar
vim.opt.laststatus = 2
vim.opt.statusline = " %f %m %= %l:%c ♡"
require('rose-pine').setup(
{
    variant = "",

    highlight_groups = {
        StatusLine = { fg = "love", bg = "love", blend = 10},
        StatusLineNC = { fg = "subtle", bg = "surface"},
    },

    before_highlight = function(group, highlight, palette)
        if highlight.fg == palette.rose then
            highlight.fg = palette.iris
        end
        if highlight.fg == palette.foam then
            highlight.fg = palette.rose
        end
        if highlight.fg == palette.pine then
            highlight.fg = palette.love
        end
    end,
})

vim.cmd('colorscheme rose-pine')
