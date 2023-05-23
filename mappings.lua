-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["bö"] = { "<cmd>bp<cr>", desc = "Prev buffer" },
    ["bä"] = { "<cmd>bn<cr>", desc = "Next buffer" },
    
    ["ö"] = { "{", desc = "Prev paragraf" },
    ["ä"] = { "}", desc = "Next paragraf" },

    ["å"] = { "$", desc = "End of line" },

    ["<leader>d"] = { "<cmd>e $userprofile\\appdata\\local\\nvim\\lua\\user\\mappings.lua<cr>", 
                      desc = "Open Usermappings"},
    ["gj"] = {"<cmd>GoAlt<cr>"},
    ["gi"] = {"<cmd>GoImport<cr>"},
    
    ["cp"] = {'<esc>:let @* = expand("%:p:h")<cr>:echo "Path copied to clipboard"<cr>'},
    -- tables with the `name` key will be registered with which-key if it's installed
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

  },
  v = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["ö"] = { "{", desc = "Prev paragraf" },
    ["ä"] = { "}", desc = "Next paragraf" },
    ["å"] = { "$", desc = "End of line" },
    ["if"] = { "<esc>?func <cr>v<cmd>/^}<cr>"},
    -- tables with the `name` key will be registered with which-key if it's installed
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  o = {
    ["aö"] = { "a{", desc = "Prev paragraf" },
    ["aä"] = { "a}", desc = "Next paragraf" },
    ["af"] = { "<esc>?func <cr>v<cmd>/^}<cr>"},
    ["if"] = { "<esc>?func <cr>f{v%<cr>"},
  },
  x = {
    ["aö"] = { "a{", desc = "Prev paragraf" },
    ["aä"] = { "a}", desc = "Next paragraf" },
    ["af"] = { "<esc>?func <cr>v<cmd>/^}<cr>"},
    ["if"] = { "<esc>?func <cr>f{v%<cr>"},
  },
}
