vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvimtools/none-ls.nvim',
    'https://github.com/folke/which-key.nvim',
})

--require('nvim-treesitter').install { 'python', 'c', 'lua' }
--require('mason').setup()
--require('mason-lspconfig').setup({
--})
--local null_ls = require("null-ls")
--require('null-ls').setup({
--})

require('plugin.configs.cmp')
require('plugin.configs.mason')
require('plugin.configs.null-ls')

local g = vim.g
g.mapleader = ','

local which_key = require('which-key')
vim.keymap.set('n', '<leader>?', function() which_key.show({global = false}) end)
vim.keymap.set('i', '<leader>?', function() which_key.show() end)
