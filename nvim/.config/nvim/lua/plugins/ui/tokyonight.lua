return {
    "folke/tokyonight.nvim",
    lazy = false,  -- Carica immediatamente il tema
    priority = 1000,  -- Assicura che venga caricato prima degli altri plugin
    config = function()
        require("tokyonight").setup({
            style = "night",  -- Opzioni: night, storm, day, moon
            transparent = false,  -- Abilita sfondo trasparente
            terminal_colors = true,  -- Applica il tema al terminale integrato
        })
        vim.cmd("colorscheme tokyonight")  -- Imposta il tema attuale
    end
}


