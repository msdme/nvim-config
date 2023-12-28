return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        ---//treesitter
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "php", "javascript"},
            highlight = {enable = true},
            indent = { enable = true},
        })
    end
}
