require("config.remap")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Diagnostics options
vim.diagnostic.config({
    --    virtual_lines = {
    --    current_line = true
    --    },
    virtual_text = true,
    underline = true
    --},
})

-- Cursor behavior
vim.opt.startofline = true

-- Turn off line wrap
vim.opt.wrap = false
vim.opt.colorcolumn = "79"

-- Keep extra lines when scrolling
vim.opt.scrolloff = 8

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})

-- File handling
vim.cmd("filetype plugin indent on")

-- Set colorscheme
vim.cmd.colorscheme("greyish-blue-with-orange")

-- Transparency settings
local function set_transparent_bg()
    local highlights = {
        "Normal",
        "NormalFloat",
        "NormalNC",
        "SignColumn",
        "VertSplit",
        "StatusLine",
        "LineNr",
        "CursorLineNr",
        "EndOfBuffer",
        "NonText",
    }

    for _, hl in ipairs(highlights) do
        vim.api.nvim_set_hl(0, hl, { bg = "none" })
    end
end

-- Apply transparency
set_transparent_bg()

-- Reapply transparency after colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = set_transparent_bg,
})
