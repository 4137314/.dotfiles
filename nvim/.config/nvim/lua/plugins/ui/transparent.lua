-- File: lua/custom/plugins/transparent.lua

return {
  "xiyaowong/transparent.nvim",
  config = function()
    require('transparent').setup {
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
      },
    }
  end,
}

