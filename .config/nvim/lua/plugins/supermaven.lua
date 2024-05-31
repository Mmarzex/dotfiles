return {
  {
    "supermaven-inc/supermaven-nvim",
    opts = {
      disable_keymaps = true,
      -- keymaps = {
      --   accept_suggestion = "<tab>",
      -- },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "supermaven" })
    end,
  },
}
