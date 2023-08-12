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
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
    --       require("astronvim.utils.buffer").close(
    --         bufnr)
    --     end)
    --   end,
    --   desc = "Pick to close",
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus

    ["ö"]        = { "{", desc = "Prev paragraf" },
    ["Ö"]        = { "[", desc = "Prev paragraf" },
    ["ä"]        = { "}", desc = "Next paragraf" },
    ["Ä"]        = { "]", desc = "Next paragraf" },
    ["å"]        = { "$", desc = "End of line" },

    ["cp"]        = { [[<esc>:silent let @* = 'cd "' . expand("%:p:h") . '"' <cr>]] , desc = "Store path"},

    ["<leader>d"] = { "<cmd>e $userprofile\\appdata\\local\\nvim\\lua\\user\\mappings.lua<cr>", desc = "Open Usermappings" },
    ["<leader>8"] = { "<cmd>e $clipb\\nottoself.txt<cr>", desc = "Open Not To Self" },
    ["<leader>9"] = { "<cmd>e $clipb\\clipboard.txt<cr>", desc = "Open Clipboard file" },
    ["<leader>j"] = { "<cmd>bp<cr>", desc = "Prev buffer" },
    ["<leader>k"] = { "<cmd>bn<cr>", desc = "Next buffer" },
    ["<leader>h"] = { "<cmd>vsp<cr>", desc = "Split veritcal buffer" },

    ["<C-p>"] = {"\"0p", desc = "Paste last yank" },
    -- ["gp"]  = { "<cmd>YankyGPutAfter<cr>", desc= "Yanky GPut After" },
    -- ["gP"]  = { "<cmd>YankyGPutBefore<cr>", desc= "Yanky GPut Before" },
    -- ["<c-n>"] = { "<cmd>YankyCycleForward<cr>", desc= "Yanky Cycle Forward" },
    -- ["<c-p>"] = { "<cmd>YankyCycleBackward<cr>", desc= "Yanky Cycle Backward" },
    -- Only go files but did not find a way do mapping on filetype

    ["<leader>a"]  = { desc = "Custom command"},
    ["<leader>ai"] = { "<cmd>GoImport<cr>", desc = "Go Import"},
    ["<leader>aj"] = { "<cmd>GoAlt<cr>", desc = "Go Alt"},
    ["<leader>ab"] = { "<cmd>GoRun<cr>", desc = "Go Run"},
    ["<leader>at"] = { "<cmd>GoTest<cr>", desc = "Go Test"},
    ["<leader>ac"] = { "<cmd>close<cr>", desc = "Close panel"},
    ["<leader>ar"] = { "<cmd>GoRename<cr>", desc = "Go Rename"},

    ["<leader>aq"] = {"<cmd>Comment.nvim<cr>",desc = "Comment"},
  },

  t = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- tables with the `name` key will be registered with which-key if it's installed
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  v = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["ö"] = { "{", desc = "Prev paragraf" },
    ["Ö"] = { "]", desc = "Prev paragraf" },
    ["ä"] = { "}", desc = "Next paragraf" },
    ["Ä"] = { "]", desc = "Next paragraf" },
    ["å"] = { "$", desc = "End of line" },
    ["if"] = { "<esc>?func <cr>v<cmd>/^}<cr>" },
    ["<C-p>"] = {"\"0p", desc = "Paste last yank" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  o = {
    ["aö"] = { "a[", desc = "Prev paragraf" },
    ["aä"] = { "a]", desc = "Next paragraf" },
    ["af"] = { "<esc>?func <cr>v<cmd>/^}<cr>" },
    ["if"] = { "<esc>?func <cr>f{v%<cr>" },
  },

  x = {
    ["aö"] = { "a[", desc = "Prev paragraf" },
    ["aä"] = { "a]", desc = "Next paragraf" },
    ["af"] = { "<esc>?func <cr>v<cmd>/^}<cr>" },
    ["if"] = { "<esc>?func <cr>f{v%<cr>" },
  },

}
