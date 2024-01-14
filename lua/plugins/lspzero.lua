vim.diagnostic.config({
    virtual_text = false,
})
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

return {
    "VonHeikemen/lsp-zero.nvim",
    version = "*",
    dependencies = {
        -- LSP support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            local opts = {buffer = bufnr, remap = false}
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = bufnr })
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                'lua_ls',
                'rust_analyzer',
                'jdtls',
            },
            handlers = {
                lsp_zero.default_setup,
            },
        })
    end,
}
