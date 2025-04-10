local opt = vim.opt
local g = vim.g

-- File handling
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.autowrite = true
opt.autoread = true
opt.hidden = true

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Performance
opt.timeoutlen = 500
opt.updatetime = 300

-- UI
opt.signcolumn = "yes"
opt.breakindent = true
opt.showbreak = "↪"
opt.linebreak = true
opt.number = true
opt.cursorline = true

-- Completion
opt.completeopt = { "menuone", "noselect" }

-- Splitting
opt.splitbelow = true
opt.splitright = true

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- Leader Key
g.mapleader = " "


