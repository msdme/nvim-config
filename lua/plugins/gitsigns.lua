return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 100,
                virt_text_pos = 'right_align'
            },
            numhl = true,

        })
    end
}
