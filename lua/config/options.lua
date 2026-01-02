-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--Font Colors

-- Definir el color rosa (puedes usar el hex que más te guste)
local pink = "#f38ba8"

-- Cambiar el color de las carpetas y el nombre del directorio en Neo-tree
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = pink })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = pink })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = pink, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#e0e0e0" }) -- Color para archivos comunes

-- Global IDE Settings
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- Esto quita el efecto de "transparencia/gris" en el código considerado redundante
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { link = "Normal" })
vim.opt.list = false -- Desactiva la visualización de caracteres invisibles

-- LSP and Diagnostics
vim.lsp.inlay_hint.enable(false) -- Disabled type hints; keep hints enabled per-plugin as configured
vim.diagnostic.config({
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    virtual_text = {
        prefix = "● ",
        spacing = 4,
    },
    float = {
        source = true,
        border = "rounded",
        focusable = true,
    },
})

-- UI Enhancements
vim.o.number = true
vim.o.relativenumber = false
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.wrap = false

-- Performance Optimizations
vim.o.updatetime = 200 -- Faster swap file and diagnostic updates (default 4000ms)
vim.o.timeoutlen = 300 -- Faster keymap timeout (default 1000ms)

-- LSP timeout (Roslyn needs more time)
vim.lsp.set_log_level("warn") -- Show warnings but not debug spam
vim.g.lsp_log_verbose = false
