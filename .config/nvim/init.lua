if vim.loader then
	vim.loader.enable()
end

require("dayo.keymaps")
require("dayo.options")
require("dayo.autocmds")
require("config.lazy")
require("after.telescope")
