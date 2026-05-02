return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            vim.lsp.config("clangd",{
                capabilities = capabilities
            })
            vim.lsp.config("lua_ls",{
                capabilities = capabilities
            })
            vim.lsp.config("emmylua_ls",{
                capabilities = capabilities
            })
            vim.lsp.config("pyright",{
                capabilities = capabilities
            })
            vim.lsp.config("ts_ls",{
                capabilities = capabilities
            })
            vim.lsp.config("html",{
                capabilities = capabilities
            })
            vim.lsp.config("cssls",{
                capabilities = capabilities
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
    {
        "mason-org/mason.nvim",
        config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright", "clangd"},
        })
        end,
        opts = {automatic_enable = {exclude = "jdtls"}}
    },

    

}
