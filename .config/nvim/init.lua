if vim.loader then
	vim.loader.enable()
end

require("dayo")
require("config.lazy")
require("after.telescope")
