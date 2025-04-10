return {
  "m4xshen/autoclose.nvim",
  config = function()
    require("autoclose").setup({
      keys = {
        ["("] = { escape = false, close = true, pair = "()" },
        ["["] = { escape = false, close = true, pair = "[]" },
        ["{"] = { escape = false, close = true, pair = "{}" },
        ['"'] = { escape = true, close = true, pair = '""' },
        ["'"] = { escape = true, close = true, pair = "''" },
        ["`"] = { escape = true, close = true, pair = "``" },
      },
      options = {
        disable_when_touch = true,
        pair_spaces = false,
        auto_indent = true,
      },
    })
  end
}


