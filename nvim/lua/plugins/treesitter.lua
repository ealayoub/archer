return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "javascript", "html", "css", "c", "cpp", "rust", "python", "markdown" },
			highlight = { enable = true },
			indent = { endable = true },
		})
	end,
}
