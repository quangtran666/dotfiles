return {
	"monkoose/neocodeium",
	event = "VeryLazy",
	config = function()
		local neocodeium = require("neocodeium")

		neocodeium.setup({
			filter = function()
				return not require("blink.cmp").is_visible()
			end,
		})

		vim.api.nvim_create_autocmd("User", {
			pattern = "BlinkCmpMenuOpen",
			callback = function()
				neocodeium.clear()
			end,
		})

		vim.keymap.set("i", "<A-f>", neocodeium.accept)
		vim.keymap.set("i", "<A-e>", neocodeium.cycle)
	end,
}
