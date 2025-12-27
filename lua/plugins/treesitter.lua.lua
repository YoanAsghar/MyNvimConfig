return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = {
      "c_sharp",
      "lua",
      "json",
      "html",
      "css",
      "javascript",
    },
  },
}
