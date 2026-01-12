return {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Se carga al iniciar para evitar el "flash" de color sólido
    config = function()
        require("transparent").setup({

            -- Estos grupos cubren la mayoría de las áreas de la interfaz
            extra_groups = {
                "NormalFloat",
                "NvimTreeNormal", 
                "NvimTreeNormalNC", 
                "NeoTreeNormal", 
                "NeoTreeNormalNC",
                "EndOfBuffer", -- Ventanas flotantes (ej. Mason, diagnósticos) -- Fondo de NvimTree -- Fondo de NeoTree (si lo usas)
                "StatusLine", -- Barra de estado
                "TabLine", -- Barra de pestañas
            },
            exclude_groups = {}, -- Grupos que NO quieres que sean transparentes
        })

        -- Comando para asegurar que se active siempre
        vim.cmd("TransparentEnable")
    end,
}
