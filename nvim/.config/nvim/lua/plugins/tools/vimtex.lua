return {
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      -- Metodo di compilazione: usa latexmk
      vim.g.vimtex_compiler_method = "latexmk"

      -- Viewer PDF: zathura è leggero e supporta synctex
      vim.g.vimtex_view_method = "zathura"

      -- Disabilita quickfix automatico (opzionale)
      vim.g.vimtex_quickfix_mode = 0

      -- Formattazione automatica disabilitata
      vim.g.vimtex_format_enabled = 0

      -- ToC: indice dei contenuti (attivo ma non apre all’avvio)
      vim.g.vimtex_toc_config = {
        name = 'TOC',
        layers = { 'content', 'todo', 'include' },
        show_help = 0,
        show_numbers = 1,
        mode = 2,
      }

      -- Mappe locali (usare \lt per ToC, ecc.)
    end
  }
}


