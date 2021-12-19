local wk = require('which-key')
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save & Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close Buffer"},
  q = {":q<cr>", "Quit"},
  e = {":NvimTreeToggle<cr>", "Open File Explorer"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit Config File"},
  f = {
    name = "Telescope",
    f = {"<cmd>Telescope find_files<cr>", "Find Files"},
    r = {"<cmd>Telescope live_grep<cr>", "Live grep"},
    b = {"<cmd>Telescope buffers<cr>", "Buffers"},
    o = {"<cmd>Telescope oldfiles<cr>", "Recent Files"}
  },
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Commands"},
    w = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder"},
    W = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder"},
    l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders))<cr>", "List Workspace Folders"},
    t = {"<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition"},
    d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition"},
    D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration"},
    r = {"<cmd>lua vim.lsp.buf.references()<cr>", "References"},
    R = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
    a = {"<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action"},
    e = {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", "Show Line Diagnostics"},
    n = {"<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Go To Next Diagnostic"},
    N = {"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Go To Previous Diagnostic"},
  }
}

local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
