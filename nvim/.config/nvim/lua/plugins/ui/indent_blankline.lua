return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPre",
    config = function()
        require("ibl").setup({
            indent = { char = "|" },  -- Carattere per le linee di indentazione
            scope = { enabled = true },  -- Evidenzia l'indentazione attuale
        })
    end
}





