return {
    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = { "lua", "vim", "vimdoc", "c", "cpp", "python" },
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
