-- PLUGINS
vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
})

require('nvim-treesitter').install { 'python', 'c' }

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup()
