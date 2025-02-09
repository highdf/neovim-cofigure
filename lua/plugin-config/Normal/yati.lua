require("nvim-treesitter.configs").setup {
  yati = {
    enable = true,
    -- Disable by languages, see `Supported languages`
    disable = { "python"},

    default_lazy = true,

    default_fallback = "auto"
  },
  indent = {
    enable = false -- disable builtin indent module
  }
}
