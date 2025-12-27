return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000, -- Muy importante para que cargue antes que el resto
        lazy = false, -- Queremos el tema desde el segundo 0
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                transparent_background = false,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- Si un plugin te da error, puedes desactivar su integración aquí:
                    -- lualine = false,
                },
            })

            -- Cargar el esquema de colores
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
