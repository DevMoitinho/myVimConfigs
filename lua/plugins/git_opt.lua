return {
    {
        "tpope/vim-fugitive"
    },
    {
        "lewis6992/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            vim.keymap.set('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            end
    }
}
