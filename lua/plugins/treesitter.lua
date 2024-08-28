-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "gotmpl",
      "make"
      -- add more arguments for adding more treesitter parsers
    },
  },
}
