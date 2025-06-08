return {
    'mbbill/undotree',
    config = function()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle UndoTree' })
        
        -- Optional: Configure undotree settings
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SplitWidth = 30
        vim.g.undotree_SetFocusWhenToggle = 1
    end,
}