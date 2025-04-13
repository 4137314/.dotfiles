return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPre",
    config = function()
        require("ibl").setup({
            indent = {
                char = "│",
            },
            scope = {
                enabled = true,
                highlight = { "IblScope" },
                show_start = false,
                show_end = false,
                include = {
                    node_type = {
                        ["*"] = { "*" },  -- applica a tutti i tipi di nodo AST
                    },
                },
            },
        })

        -- Colore dell'intera indentazione attiva
        vim.api.nvim_set_hl(0, "IblScope", { fg = "#888888", nocombine = true })
    end,
}

