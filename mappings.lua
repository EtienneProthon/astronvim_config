-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "astronvim.utils"
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>e"] = { "<cmd>Neotree toggle reveal<cr>", desc = "Toogle Explorer" },
    ["<leader>gg"] = { function() utils.toggle_term_cmd "gitui" end, desc = "ToogleTerm gitui" },
    ["<leader>o"] = false,
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<leader>w"] = { ":wa<cr>", desc = "Save all files" },
    ["<Tab>"] = { ":bnext<cr>", desc = "Go to next buffer" },
    ["<S-Tab>"] = { ":bprev<cr>", desc = "Go to precedent buffer" },
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Yanky
    -- ["y"] = { "<Plug>(YankyYank)", desc = "Copy" },
    -- ["p"] = { "<Plug>(YankyPutAfter)", desc = "Paste" },
    -- ["P"] = { "<Plug>(YankyPutBefore)", desc = "Paste" },
    -- ["gp"] = { "<Plug>(YankyGPutAfter)", desc = "Paste" },
    -- ["gP"] = { "<Plug>(YankyGPutBefore)", desc = "Paste" },
    ["<c-p>"] = { "<Plug>(YankyCycleForward)", desc = "Cycle Forward" },
    ["<c-y>"] = { "<Plug>(YankyCycleBackward)", desc = "Cycle Backward" },
    ["<leader>rn"] = { function() require("neotest").run.run() end, desc = "Run nearest test" },
    ["<leader>rf"] = { function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run nearest test" },
    ["<leader>ro"] = { function() require("neotest").output_panel.open() end, desc = "Open test outputs" },
  },
  -- x = {
  --   ["y"] = { "<Plug>(YankyYank)", desc = "Copy" },
  --   ["p"] = { "<Plug>(YankyPutAfter)", desc = "Paste" },
  --   ["P"] = { "<Plug>(YankyPutBefore)", desc = "Paste" },
  --   ["gp"] = { "<Plug>(YankyGPutAfter)", desc = "Paste" },
  --   ["gP"] = { "<Plug>(YankyGPutBefore)", desc = "Paste" },
  -- },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
