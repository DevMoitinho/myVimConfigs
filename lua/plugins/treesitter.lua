return{
	"nvim-treesitter/nvim-treesitter", 
	branch = 'master', 
	lazy = false, 
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
		ensure_installed = {"lua","c","java","python", "javascript", "html", "css"},
		highlight = {enable = true},
		indent = {enable = true},
		})
	end
}
