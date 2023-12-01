return {
	"elixir-tools/elixir-tools.nvim",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	lazy = false,
	config = function()
		local elixir = require("elixir")
		local elixirls = require("elixir.elixirls")
		local mapkey = require("util.keymapper").mapkey

		elixir.setup({
			nextls = { enable = false },
			credo = {},
			elixirls = {
				enable = true,
				settings = elixirls.settings({
					dialyzerEnabled = false,
					enableTestLenses = false,
				}),
				on_attach = function(client, bufnr)
                    local opts = { noremap = true, silent = true }
                    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })

					mapkey("<leader>fd", "Lspsaga finder", "n", opts) -- go to definition
					mapkey("<leader>gd", "Lspsaga peek_definition", "n", opts) -- peak definition
					mapkey("<leader>gD", "Lspsaga goto_definition", "n", opts) -- go to definitio
					mapkey("<leader>ca", "Lspsaga code_action", "n", opts) -- see available code actions
					mapkey("<leader>rn", "Lspsaga rename", "n", opts) -- smart rename
					mapkey("<leader>D", "Lspsaga show_line_diagnostics", "n", opts) -- show  diagnostics for line
					mapkey("<leader>d", "Lspsaga show_cursor_diagnostics", "n", opts) -- show diagnostics for cursor
					mapkey("<leader>pd", "Lspsaga diagnostic_jump_prev", "n", opts) -- jump to prev diagnostic in buffer
					mapkey("<leader>nd", "Lspsaga diagnostic_jump_next", "n", opts) -- jump to next diagnostic in buffer
					mapkey("K", "Lspsaga hover_doc", "n", opts) -- show documentation for what is under cursor
				end,
			},
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

