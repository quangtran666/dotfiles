return {
	"NickvanDyke/opencode.nvim",
	dependencies = {
		---@module 'snacks'
		{ "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
	},
	config = function()
		vim.g.opencode_opts = {
			provider = {
				enabled = "tmux",
				tmux = {},
			},
		}

		vim.o.autoread = true

		vim.keymap.set({ "n", "x" }, "<C-f>", function()
			require("opencode").ask("@this: ", { submit = true })
		end, { desc = "Ask opencode..." })

		vim.keymap.set({ "n", "t" }, "<C-.>", function()
			require("opencode").toggle()
		end, { desc = "Toggle opencode" })

		vim.keymap.set({ "n", "x" }, "<C-x>", function()
			require("opencode").select()
		end, { desc = "Execute opencode action…" })

		vim.keymap.set({ "n", "x" }, "go", function()
			return require("opencode").operator("@this ")
		end, { desc = "Add range to opencode", expr = true })
	end,
}
