local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
            layout_strategy = 'horizontal',
			layout_config = {
				horizontal = { width = 0.9 },
				-- other layout configuration here
			},
		},
		-- pickers = {
		-- 	find_files = {
		-- 		theme = "dropdown",
		-- 		previewer = true,
		-- 		hidden = true,
		-- 	},
		-- 	live_grep = {
		-- 		theme = "dropdown",
		-- 		previewer = true,
		-- 	},
		-- 	buffers = {
		-- 		theme = "dropdown",
		-- 		previewer = true,
		-- 	},
		-- },
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	-- brew install ripgrep
	config = config,
	keys = {
		mapkey("<leader>fk", "Telescope keymaps", "n"),
		mapkey("<leader>fh", "Telescope help_tags", "n"),
		mapkey("<leader>ff", "Telescope find_files", "n"),
		mapkey("<leader>fg", "Telescope live_grep", "n"),
		mapkey("<leader>fb", "Telescope buffers", "n"),
	},
}
