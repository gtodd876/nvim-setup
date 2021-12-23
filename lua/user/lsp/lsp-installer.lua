local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server.name == "jsonls" then
	 	local jsonls_opts = require("user.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  	server:setup(opts)
	end

	if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  	server:setup(opts)
	end

  if server.name == "rust_analyzer" then
    local rust_opts = require("user.lsp.settings.rust_analyzer")
	 	opts = vim.tbl_deep_extend("force", rust_opts, opts)
    require("rust-tools").setup {
      server = vim.tbl_deep_extend("force", server:get_default_options(), opts)
    }
	 	server:attach_buffers()
  else 
    server:setup(opts)
  end
end)
