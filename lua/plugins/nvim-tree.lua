return {
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            filters = {
                dotfiles = false,
                custom = { "^.git$", "^.idea$" },
            },
            renderer = {
                group_empty = true,
            },
            git = {
                ignore = false,
            },
            view = {
                width = 50,
            },
        },
    },
}
