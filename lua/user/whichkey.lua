local wk = require("which-key")
local mappings = {
  ["<leader>"] = {
    q = {":q<cr>", "Quit"},
    e = {":NvimTreeToggle<cr>", "Explorer"},
    w = {":w<cr>", "Save File"},
    x = {"bdelete<cr>", "Delete File"},
    E = {":e ~/.config/nvim/init.lua<cr>", "Edit Config File"},
    ["<cr>"] = {":so<cr>", "Source File"},
    f = {
      name = "Telescope",
      f = {"<cmd>Telescope find_files<cr>", "Find Files"},
      r = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
      b = {"<cmd>Telescope buffers<cr>", "Buffers"},
      o = {"<cmd>Telescope oldfiles<cr>", "Recent Files"}
    },
    z = {name = "Focus Mode", z = {":ZenMode<cr>", "Zen Mode"}, t = {":Twilight<cr>", "Twilight"}}
  }
}
local opts = {silent = true, noremap = true}

wk.register(mappings, opts)

local vopts = {
  mode = "v", -- VISUAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true -- use `nowait` when creating keymaps
}
local vmappings = {
  ["/"] = {
    "<ESC><CMD>lua require(\"Comment.api\").toggle_linewise_op(vim.fn.visualmode())<CR>", "Comment"
  }
}

wk.register(vmappings, vopts)
