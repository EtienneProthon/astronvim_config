-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "terraform",
      "rust",
      "svelte",
      "javascript",
      "typescript",
      "css",
      "python",
      "go",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
