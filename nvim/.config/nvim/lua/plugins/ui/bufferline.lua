return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup {
            options = {
                numbers = "ordinal", -- Mostra numeri sulle schede
                diagnostics = "nvim_lsp", -- Mostra errori LSP sulle schede
                separator_style = "slant", -- Stile del separatore
                always_show_bufferline = true, -- Mostra sempre la barra delle schede
                show_close_icon = false, -- Nasconde l'icona di chiusura globale
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true,
                    }
                },
            }
        }
    end
}


