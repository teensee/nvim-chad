return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        filters = {
            dotfiles = false,
            custom = {
                "^.git$",
                "^.idea$",
                "^.obsidian$",
                "^.DS_Store$",
            },
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
}
