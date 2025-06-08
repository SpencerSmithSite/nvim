return {
    'tpope/vim-fugitive',
    config = function()
        -- Git status
        vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })
        
        -- Git blame
        vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = 'Git blame' })
        
        -- Git diff
        vim.keymap.set('n', '<leader>gd', ':Gdiffsplit<CR>', { desc = 'Git diff split' })
        
        -- Git log
        vim.keymap.set('n', '<leader>gl', ':Git log<CR>', { desc = 'Git log' })
        
        -- Git push
        vim.keymap.set('n', '<leader>gp', ':Git push<CR>', { desc = 'Git push' })
        
        -- Git pull
        vim.keymap.set('n', '<leader>gP', ':Git pull<CR>', { desc = 'Git pull' })
        
        -- Git commit
        vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { desc = 'Git commit' })
        
        -- Git add current file
        vim.keymap.set('n', '<leader>ga', ':Git add %<CR>', { desc = 'Git add current file' })
        
        -- Git add all
        vim.keymap.set('n', '<leader>gA', ':Git add .<CR>', { desc = 'Git add all' })
        
        -- Git checkout
        vim.keymap.set('n', '<leader>go', ':Git checkout ', { desc = 'Git checkout' })
        
        -- Git branch
        vim.keymap.set('n', '<leader>gB', ':Git branch<CR>', { desc = 'Git branch' })
    end,
}