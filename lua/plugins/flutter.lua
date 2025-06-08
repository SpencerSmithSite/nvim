return {
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = function()
            require("flutter-tools").setup {
                ui = {
                    border = "rounded",
                    notification_style = 'native'
                },
                decorations = {
                    statusline = {
                        -- set to true to be able to see the current device in the statusline
                        app_version = false,
                        device = true,
                        project_config = false,
                    }
                },
                debugger = {
                    enabled = false,
                    run_via_dap = false,
                },
                flutter_path = nil, -- <-- this takes priority over the lookup
                flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
                root_patterns = { ".git", "pubspec.yaml" }, -- patterns to find the root of your flutter project
                fvm = false, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
                widget_guides = {
                    enabled = false,
                },
                closing_tags = {
                    highlight = "ErrorMsg", -- highlight for the closing tag
                    prefix = "// ", -- character to use for close tag e.g. > Widget
                    enabled = true -- set to false to disable
                },
                dev_log = {
                    enabled = true,
                    notify_errors = false, -- if there is an error whilst running then notify the user
                    open_cmd = "tabedit", -- command to use to open the log buffer
                },
                dev_tools = {
                    autostart = false, -- autostart devtools server if not detected
                    auto_open_browser = false, -- Automatically opens devtools in the browser
                },
                outline = {
                    open_cmd = "30vnew", -- command to use to open the outline buffer
                    auto_open = false -- if true this will open the outline automatically when it is first populated
                },
                lsp = {
                    color = { -- show the derived colors for the specific DevTools
                        enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
                        background = false, -- highlight the background
                        background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
                        foreground = false, -- highlight the foreground
                        virtual_text = true, -- show the highlight using virtual text
                        virtual_text_str = "■", -- the virtual text character to highlight
                    },
                    on_attach = function(client, bufnr)
                        -- Custom keymaps for Flutter
                        local opts = { buffer = bufnr, silent = true }
                        
                        vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRun<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Run" }))
                        vim.keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Quit" }))
                        vim.keymap.set("n", "<leader>fr", "<cmd>FlutterReload<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Hot Reload" }))
                        vim.keymap.set("n", "<leader>fR", "<cmd>FlutterRestart<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Hot Restart" }))
                        vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Devices" }))
                        vim.keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Emulators" }))
                        vim.keymap.set("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Outline" }))
                        vim.keymap.set("n", "<leader>ft", "<cmd>FlutterDevTools<cr>", vim.tbl_extend("force", opts, { desc = "Flutter DevTools" }))
                        vim.keymap.set("n", "<leader>fc", "<cmd>FlutterLogClear<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Clear Logs" }))
                        vim.keymap.set("n", "<leader>fl", "<cmd>FlutterLogShow<cr>", vim.tbl_extend("force", opts, { desc = "Flutter Show Logs" }))
                    end,
                    capabilities = require('cmp_nvim_lsp').default_capabilities(), -- e.g. lsp_status capabilities
                    --- OR you can specify a function to deactivate or change or control how the config is created
                    capabilities = function(config)
                        config.specificThingIDontWant = false
                        return config
                    end,
                    -- see the link below for details on each option:
                    -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
                    settings = {
                        showTodos = true,
                        completeFunctionCalls = true,
                        analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
                        renameFilesWithClasses = "prompt", -- "always"
                        enableSnippets = true,
                        updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
                    }
                }
            }
            
            -- Additional Flutter keymaps (global)
            vim.keymap.set("n", "<leader>fs", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
            vim.keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })
            vim.keymap.set("n", "<leader>fh", "<cmd>FlutterReload<cr>", { desc = "Flutter Hot Reload" })
            vim.keymap.set("n", "<leader>fR", "<cmd>FlutterRestart<cr>", { desc = "Flutter Hot Restart" })
            vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
            vim.keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter Emulators" })
            vim.keymap.set("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter Outline" })
            vim.keymap.set("n", "<leader>ft", "<cmd>FlutterDevTools<cr>", { desc = "Flutter DevTools" })
            vim.keymap.set("n", "<leader>fc", "<cmd>FlutterLogClear<cr>", { desc = "Flutter Clear Logs" })
            vim.keymap.set("n", "<leader>fl", "<cmd>FlutterLogShow<cr>", { desc = "Flutter Show Logs" })
        end
    }
}