return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<Cr>")

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Mostra anche i file nascosti
					hide_dotfiles = false, -- Non nascondere i file che iniziano con un punto
				},
			},
		})
	end,
}

