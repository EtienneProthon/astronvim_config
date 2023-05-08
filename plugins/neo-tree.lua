return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- lazy = false,
    config = function()
      require("neo-tree").setup {
        window = {
          position = "float",
          width = "100%",
        },
      }
    end,
  },
}
