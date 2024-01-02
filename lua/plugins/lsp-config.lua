return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls","intelephense","tsserver"}
            })
        end
    }
    ,{

        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
                settings = {
                    format = {
                        enable = true
                    }
                }
            })
            lspconfig.intelephense.setup({
                capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
                settings = {
                    format = {
                        enable = true
                    }
                }
            })
            lspconfig.tsserver.setup({})
            vim.keymap.set("n","K",vim.lsp.buf.hover,{})
            vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
            vim.keymap.set({"n","v"},"<leader>ca",vim.lsp.buf.code_action,{})
        end
    }
}

