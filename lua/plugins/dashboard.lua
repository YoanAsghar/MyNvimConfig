return {
    {
        "folke/snacks.nvim",
        opts = function(_, opts)
            -- Forzamos la estructura de secciones para que solo tenga lo que pides
            opts.dashboard.sections = {
                { section = "header" },
                {
                    section = "keys",
                    gap = 1,
                    padding = 1,
                    items = {
                        {
                            icon = " ",
                            key = "f",
                            desc = "Find File",
                            action = ":lua Snacks.dashboard.pick('files')",
                        },
                        {
                            icon = " ",
                            key = "r",
                            desc = "Recent Files",
                            action = ":lua Snacks.dashboard.pick('oldfiles')",
                        },
                        {
                            icon = " ",
                            key = "c",
                            desc = "Config",
                            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
                        },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
                { section = "startup" },
            }
        end,
    },
}

