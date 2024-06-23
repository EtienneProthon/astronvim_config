-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.svelte" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  -- { import = "astrocommunity.test.neotest" },
}
