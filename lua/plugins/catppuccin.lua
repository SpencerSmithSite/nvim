return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,       -- Ensures it loads before other UI plugins
    lazy = false,          -- Make sure it's loaded immediately
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = false,
            integrations = {
                treesitter = true,
                native_lsp = {
                    enabled = true,
                },
            },
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
