return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",  -- Il plugin sarà caricato al momento dell'ingresso in Vim
  config = function()
    -- Definire l'header personalizzato
    local my_header = {
      "        ▄█          █          █▄          ",
      "      ▐██      ▄█  ███  █▄      ██▌        ",
      "     ▐██▌     ██████████████     ▐██▌      ",
      "    ████     ████████████████    ████      ",
      "    ▐█████  ██████████████████  █████▌     ",
      "    ████████████████████████████████       ",
      "     ███████▀▀████████████▀▀███████        ",
      "      █████▌  ▄▄ ▀████▀ ▄▄  ▐█████         ",
      "    ▄▄██████▄ ▀▀  ████  ▀▀ ▄██████▄▄       ",
      "    ██████████████████████████████████     ",
      "  ████████████████████████████████████     ",
      " ██████   ███████▀▄██▄▀███████   ██████▌   ",
      "▐█████     ██████████████████      █████▌  ",
      " ▐█████      ██████▀  ▀██████       █████▌ ",
      "  █████▄      ███        ███      ▄█████   ",
      "    ██████     █          █     ██████     ",
      "     █████                     █████       ",
      "      █████                   █████        ",
      "      ████   ▄            ▄    ████        ",
      "        ████ ██           ██ ████          ",
      "          ████████ ▄██▄ ████████           ",
      "         ████████████████████████          ",
      "         ████████████████████████          ",
      "          ▀█████████▀▀█████████▀           ",
      "            ▀███▀       ▀███▀              ",
    }

    -- Configurazione della dashboard
    require("dashboard").setup({
      theme = "doom",

      -- Opzioni relative alla navigazione
      disable_move = true,  -- Disabilita la mappatura dei tasti per muoversi nel dashboard
      shortcut_type = "letter",  -- Tipo di scorciatoia 'letter' o 'number'
      shuffle_letter = true,  -- Le lettere saranno randomizzate per i collegamenti
      change_to_vcs_root = false,  -- Cambia alla root di un VCS quando si apre un file nell'MRU

      -- Configurazione tema
      config = {
        header = my_header,  -- Imposta l'header
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File           ',
            desc_hl = 'String',
            key = 'b',
            keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s',  -- Rimuove i `[]` di default
            action = 'lua print(2)'  -- Azione per il tasto
          },
          {
            icon = ' ',
            desc = 'Find Dotfiles',
            key = 'f',
            keymap = 'SPC f d',
            key_format = ' %s',
            action = 'lua print(3)'  -- Azione per il tasto
          },
        },
        footer = {
          "Welcome to Neovim!"
        },  -- Footer personalizzato
      },

      -- Opzioni per nascondere parti dell'interfaccia
      hide = {
        statusline = true,  -- Nascondi la statusline
        tabline = true,  -- Nascondi la tabline
        winbar = true,  -- Nascondi la winbar
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}


