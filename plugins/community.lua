return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
