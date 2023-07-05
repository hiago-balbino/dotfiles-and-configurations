require('rose-pine').setup({
    disable_background = true,
    disable_italics = true
})

-- require("gruvbox").setup({
-- 	contrast = "hard",
-- 	palette_overrides = {
-- 		gray = "#2ea542",
-- 	}
-- })

function ColorScheme(color)
	color = color or "rose-pine"
	-- color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorScheme()
