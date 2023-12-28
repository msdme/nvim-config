return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",

                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Ubek-Ubek NeoTree",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    }
                }
            },
        })
    end
}

