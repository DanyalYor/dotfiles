return {
    {
        "mason-org/mason.nvim",
        config = true,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "basedpyright", "clangd" },
            })
        end,
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },

    -- markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    -- auto completion
    {
        'hrsh7th/nvim-cmp',
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp', -- LSP completions
            'hrsh7th/cmp-buffer', -- buffer words
            'hrsh7th/cmp-path', -- file paths
            'hrsh7th/cmp-cmdline', -- cmdline
            'hrsh7th/cmp-vsnip', -- snippets (vsnip)
            'hrsh7th/vim-vsnip', -- snippet engine
        },
        config = function()
            local cmp = require('cmp')
            local cmp_select = { behavior = cmp.SelectBehavior.Select }

            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- vsnip expansion
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
                    ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' }, -- LSP
                    { name = 'vsnip' }, -- snippets
                    { name = 'buffer' }, -- text in current buffer
                    { name = 'path' }, -- file paths
                }),
                formatting = {
                    format = function(entry, vim_item)
                        -- Optional: show icons or kind labels
                        return vim_item
                    end
                },
                experimental = {
                    ghost_text = true, -- set to true for inline preview
                }
            })

            -- Enable cmdline completion (e.g., :find <Tab>)
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'cmdline' },
                    { name = 'path' },
                })
            })
        end,
    },
}
