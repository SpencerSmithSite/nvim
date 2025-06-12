-- Set space as the leader key
vim.g.mapleader = " "

-- Harpoon Basic keymaps
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add file" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon toggle menu" })

-- Fugitive keybinds
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
 
-- Harpoon Navigate to files
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Harpoon file 1" })
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Harpoon file 2" })
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Harpoon file 3" })
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Harpoon file 4" })

-- Harpoon Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-k>", function() harpoon:list():prev() end, { desc = "Harpoon previous" })
vim.keymap.set("n", "<C-j>", function() harpoon:list():next() end, { desc = "Harpoon next" })
 
-- Open file explorer with <leader>pv Keys: Space + p + v
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- open neotree with <leader>e Keys: Space + e
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {})

-- Move selected lines up and down in visual mode while maintaining selection
-- and indentation Keys: J (while in visual mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selection down
-- Keys: K (while in visual mode)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selection up

-- Run Plenary test file (for Neovim plugin testing) Keys: Space + t + f
vim.api.nvim_set_keymap("n", "<leader>tf", "<Plug>PlenaryTestFile", { noremap =
false, silent = false })

-- Better line joining - join lines but keep cursor position Keys: J (in normal
-- mode)
vim.keymap.set("n", "J", "mzJ`z")

-- Half page scrolling that keeps cursor centered Keys: Ctrl + d
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down half page and center
-- Keys: Ctrl + u
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up half page and center

-- Search navigation that keeps results centered and opens folds Keys: n
vim.keymap.set("n", "n", "nzzzv") -- Next search result, center and open folds
-- Keys: N (Shift + n)
vim.keymap.set("n", "N", "Nzzzv") -- Previous search result, center and open folds

-- Auto-indent paragraph and return cursor to original position Keys: = + a + p
vim.keymap.set("n", "=ap", "ma=ap'a")

-- Restart LSP server (useful for debugging LSP issues) Keys: Space + z + i + g
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste over selection without losing the original register content This
-- deletes to black hole register then pastes, preserving your yanked text
-- Keys: Space + p (while in visual mode)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- System clipboard operations Keys: Space + y (in normal or visual mode)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank to system clipboard
-- Keys: Space + Y (Shift + y)
vim.keymap.set("n", "<leader>Y", [["+Y]])           -- Yank line to system clipboard

-- Delete to black hole register (doesn't overwrite default register) Keys:
-- Space + d (in normal or visual mode)
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Disable Ex mode (Q normally enters Ex mode, which is usually not wanted)
-- Keys: Q (Shift + q) - now does nothing
vim.keymap.set("n", "Q", "<nop>")

-- Search and replace word under cursor globally Positions cursor for you to
-- type the replacement Keys: Space + s
vim.keymap.set("n", "<leader>s",
[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable Keys: Space + x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

