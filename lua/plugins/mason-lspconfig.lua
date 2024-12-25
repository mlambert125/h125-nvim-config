return {
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim',
            'neovim/nvim-lspconfig',
        },
        config = function()
            require('mason-lspconfig').setup {
                ensure_installed = {
                    'lua_ls',
                    'ts_ls',
                    'omnisharp',
                },
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup {}
                    end,
                    ['lua_ls'] = function()
                        require('lspconfig').lua_ls.setup {
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { 'vim' },
                                    },
                                },
                            },
                        }
                    end,
                },
            }
        end,
    },
}