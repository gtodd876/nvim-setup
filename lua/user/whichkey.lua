local wk = require("which-key")
local mappings = {
  ["<leader>"] = {
    q = {":q<cr>", "Quit"},
    e = {":Lex 20<cr>", "Explorer"},
    w = {":w<cr>", "Save File"},
    x = {"bdelete<cr>", "Delete File"},
    E = {":e ~/.config/nvim/init.lua<cr>", "Edit Config File"},
    ["/"] = {":CommentToggle<cr>", "Comment Line"},
    ["<cr>"] = {":so<cr>", "Source File"},
    f = {
      name = "Telescope",
      f = {"<cmd>Telescope find_files<cr>", "Find Files"},
      r = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
      b = {"<cmd>Telescope buffers<cr>", "Buffers"},
      o = {"<cmd>Telescope oldfiles<cr>", "Recent Files"},
    }
  }
}
local opts = {silent = true, noremap = true,}

wk.register(mappings, opts)

