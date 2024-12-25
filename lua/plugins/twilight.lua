return {
    {
        "folke/twilight.nvim",
        opts = {
            alpha = 0.8,
            color = { "Normal", "#ffffff" },
            inactive = true,
        },
        context = 10,

        treesitter = true,
        expand = { -- for treesitter, all the groups will be expanded
            "function",
            "method",
            "table",
            "if_statement",
        },
        lazy = false,
    },
}
