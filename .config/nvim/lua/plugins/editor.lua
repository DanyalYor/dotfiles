return {
    -- treesitter (main branch rewrite, see :h nvim-treesitter)
    {
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter').setup {}

            -- Install parsers synchronously on first run if missing
            local parsers = { "lua", "vim", "vimdoc", "c", "cpp", "python" }
            local installed = require('nvim-treesitter').get_installed()
            local need_install = {}
            for _, lang in ipairs(parsers) do
                if not vim.tbl_contains(installed, lang) then
                    table.insert(need_install, lang)
                end
            end
            if #need_install > 0 then
                require('nvim-treesitter').install(need_install):wait(300000)
            end

            -- Enable treesitter features per filetype (highlight, indent, folds)
            vim.api.nvim_create_autocmd('FileType', {
                pattern = parsers,
                callback = function()
                    vim.treesitter.start()
                    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                    vim.wo.foldmethod = 'expr'
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    },

    -- filetree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
            })
        end,
    },

    -- telescope fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },

    -- keybinding helper
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },

    -- tab support
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            animation = true,
            insert_at_start = true,
            -- …etc.
        },
        -- version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    -- theme picker
    {
        'panghu-huang/theme-picker.nvim',
        lazy = false,
        opts = {
            -- Options passed to Telescope
            picker = {
                layout_config = {
                    width = 0.35,
                    height = 0.5,
                },
            },
            themes = {
                -- Tokyo Night
                { name = "Tokyo Night (Night)",    colorscheme = "tokyonight-night" },
                { name = "Tokyo Night (Storm)",    colorscheme = "tokyonight-storm" },
                { name = "Tokyo Night (Day)",      colorscheme = "tokyonight-day" },

                -- Catppuccin
                { name = "Catppuccin (Latte)",     colorscheme = "catppuccin-latte",     background = "light" },
                { name = "Catppuccin (Frappe)",    colorscheme = "catppuccin-frappe",    background = "dark" },
                { name = "Catppuccin (Macchiato)", colorscheme = "catppuccin-macchiato", background = "dark" },
                { name = "Catppuccin (Mocha)",     colorscheme = "catppuccin-mocha",     background = "dark" },

                -- Kanagawa
                { name = "Kanagawa (Dragon)",      colorscheme = "kanagawa-dragon" },
                { name = "Kanagawa (Lotus)",       colorscheme = "kanagawa-lotus" },
                { name = "Kanagawa (Wave)",        colorscheme = "kanagawa-wave" },

                -- Nightfox
                { name = "Nightfox (Nordfox)",     colorscheme = "nordfox" },
                { name = "Nightfox (Duskfox)",     colorscheme = "duskfox" },
                { name = "Nightfox (Carbonfox)",   colorscheme = "carbonfox" },
                { name = "Nightfox (Terafox)",     colorscheme = "terafox" },
                { name = "Nightfox (Dayfox)",      colorscheme = "dayfox",               background = "light" },
                { name = "Nightfox (Dawnfox)",     colorscheme = "dawnfox",              background = "light" },

                -- Rose Pine
                { name = "Rose Pine (Main)",       colorscheme = "rose-pine" },
                { name = "Rose Pine (Dawn)",       colorscheme = "rose-pine-dawn",       background = "light" },

                -- Gruvbox (explicit light/dark)
                {
                    name = "Gruvbox (Dark)",
                    colorscheme = "gruvbox",
                    before = function()
                        vim.opt.background = "dark"
                        vim.cmd("runtime! colors/gruvbox.vim")
                    end,
                },
                {
                    name = "Gruvbox (Light)",
                    colorscheme = "gruvbox",
                    before = function()
                        vim.opt.background = "light"
                        vim.cmd("runtime! colors/gruvbox.vim")
                    end,
                },
                -- Add more themes
            },
            on_change = function(theme)
                -- Auto-set background based on theme name or custom field
                local bg = "dark"
                if theme.name:match("Latte") or theme.name:match("Day") or theme.name:match("Dawn") or theme.name:match("Light") then
                    bg = "light"
                end
                vim.opt.background = bg
                vim.cmd.colorscheme(theme.colorscheme)
            end,
        },
    },
}
