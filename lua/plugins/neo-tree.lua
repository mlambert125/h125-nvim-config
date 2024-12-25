return {
    {
        'folke/neo-tree.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
        config = function()
            require('neo-tree').setup {
                close_if_last_window = true,
                enable_git_status = true,
                source_selector = {
                    winbar = true,
                    statusline = false
                },
                sources = {
                    'filesystem',
                    'git_status',
                    'buffers',
                    'document_symbols',
                },
                window = {
                    width = 30,
                    side = 'left',
                    auto_resize = true,
                },
            }
        end,
    },
}
