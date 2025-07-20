return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
			},
			transparent = true,
			terminal_colors = true,
		})
		vim.cmd.colorscheme("tokyonight-night")
	end,
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	-- config = function()
	-- 	vim.cmd("colorscheme rose-pine")
	-- end,
}
