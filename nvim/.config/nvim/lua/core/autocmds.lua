local autocmd = vim.api.nvim_create_autocmd

-- Rileggi automaticamente il file quando viene modificato esternamente
autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    command = "checktime",
})


