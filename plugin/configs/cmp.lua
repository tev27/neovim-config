local function border(hl_name)
    return {
        { "╭", hl_name },
        { "─", hl_name },
        { "╮", hl_name },
        { "│", hl_name },
        { "╯", hl_name },
        { "─", hl_name },
        { "╰", hl_name },
        { "│", hl_name },
    }
end


local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
    completion = {
        menu = { border = border("CmpBorder") },
        documentation = {
            auto_show = false,
            window = { border = border("CmpBorder") },
        },
        list = {
            selection = {
                preselect = true,
                auto_insert = true,
            },
        },
    },

    keymap = {
	preset = 'none',
	['<C-Space>'] = { 'show' }
    },
    sources = {
	default = { 'lsp', 'path', 'buffer' }
    }
})

vim.keymap.set('i', '<C-Space>', function() cmp.show() end)
