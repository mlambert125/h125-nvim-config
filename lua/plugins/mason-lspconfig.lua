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
                    'rust_analyzer',
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
                    ['rust_analyzer'] = function()
                        require('lspconfig').rust_analyzer.setup {
                            settings = {
                                ['rust-analyzer'] = {
                                    checkOnSave = {
                                        command = 'clippy',
                                    },
                                    diagnostics = {
                                      enable = false;
                                    }
                                },
                            },
                        }
                    end,
                },
            }
        end,
    },
}
