-- Set space as the leader key
vim.g.mapleader = " "

-- Open file explorer with <leader>pv Keys: Space + p + v
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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

