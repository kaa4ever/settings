return {
  "saghen/blink.cmp",
  opts = {
    snippets = {
      -- Neovim's native snippet parser is stricter than the LSP spec, so some
      -- servers (e.g. emmet-ls) return snippets it rejects with
      -- "Failed to parse snippet" (_snippet_grammar.lua). Fall back to inserting
      -- the snippet as plain text instead of throwing an error.
      expand = function(snippet)
        if pcall(vim.snippet.expand, snippet) then
          return
        end
        local ok, text = pcall(vim.lsp.util.parse_snippet, snippet)
        if not ok or type(text) ~= "string" then
          text = snippet
        end
        vim.api.nvim_put(vim.split(text, "\n"), "c", true, true)
      end,
    },
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
    },
    keymap = {
      preset = "default",
      ["<CR>"] = { "select_and_accept", "fallback" },
      ["<C-y>"] = { "select_and_accept" },
    },
  },
}
