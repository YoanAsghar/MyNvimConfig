-- bootstrap lazy.nvim, LazyVim and your plugin
require("config.lazy")
--require("config.csharp") not anymore i changed it lol
-- Pon esto en tu init.lua o después de cargar tu tema


-- Forzar el color de las carpetas en Neo-tree
local function set_neotree_colors()
  local folder_color = "#BD93F9" -- Cambia este HEX al que tú quieras
  
  -- Estos 3 grupos suelen controlar el color azul de las carpetas
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = folder_color })
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = folder_color })
  vim.api.nvim_set_hl(0, "Directory", { fg = folder_color }) 
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#DD82FF" }) -- Ejemplo: Morado
  vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#F8F8F2" })      -- Ejemplo: Blanco hueso
  vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#BD93F9", bold = true }) -- Ejemplo: Rosa
end

-- Ejecutar ahora
set_neotree_colors()

-- Y ejecutar cada vez que cambies de tema por si acaso
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_neotree_colors,
})

