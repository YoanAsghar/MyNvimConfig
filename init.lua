-- Set clipboard provider for Windows
if vim.fn.has("win32") == 1 then
    local clipboard_exe = vim.fn.exepath("win32yank.exe")
    if clipboard_exe ~= "" then
        vim.g.clipboard = {
            name = "win32yank-wsl",
            copy = {
                ["+"] = clipboard_exe .. " -i --crlf",
                ["*"] = clipboard_exe .. " -i --crlf",
            },
            paste = {
                ["+"] = clipboard_exe .. " -o --crlf",
                ["*"] = clipboard_exe .. " -o --crlf",
            },
            cache_enabled = 0,
        }
    end
end

-- bootstrap lazy.nvim, LazyVim and your plugin
require("config.lazy")
--require("config.csharp") not anymore i changed it lol
-- Pon esto en tu init.lua o después de cargar tu tema

-- Forzar el color de las carpetas en Neo-tree, for changing colors of the file explorer
local function set_neotree_colors()
    local folder_color = "#a99999" -- Cambia este HEX al que tú quieras

    --Estos 3 grupos suelen controlar el color azul de las carpetas
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = folder_color })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = folder_color })
    vim.api.nvim_set_hl(0, "Directory", { fg = folder_color })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#a3a3a3" }) -- Ejemplo: Morado
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#a89984" }) -- Ejemplo: Blanco hueso
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = folder_color, bold = true }) -- Ejemplo: Rosa
end

-- Ejecutar ahora
set_neotree_colors()

-- Y ejecutar cada vez que cambies de tema por si acaso
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = set_neotree_colors,
})

--Behavior
vim.opt.clipboard:append("unnamedplus") -- For clipboardq

--Colorscheme
vim.cmd.colorscheme("kanagawa-paper-ink")

vim.lsp.handlers["textDocument/signatureHelp"] = function() end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "#767676" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })

-- Basic settings
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true -- Highlight current line
vim.opt.wrap = false -- Don't wrap lines
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
