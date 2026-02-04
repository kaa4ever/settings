return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    explorer = { enabled = true, hidden = true },
    picker = {
      hidden = true,
      ignored = false,
      exclude = { "**/node_modules/**", "**/.yarn/releases/**" },
    },
  },
}
