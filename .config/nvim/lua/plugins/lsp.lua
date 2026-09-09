return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- emmet-ls defaults to attaching to JS/TS/React files where its
      -- abbreviation completions (datetime~, uuid~, copyright~, ...) are just
      -- noise inside JSX expressions. Restrict it to markup/style filetypes.
      emmet_ls = {
        filetypes = {
          "css",
          "eruby",
          "html",
          "htmldjango",
          "less",
          "pug",
          "sass",
          "scss",
          "svelte",
          "vue",
        },
      },
    },
    setup = {
      tsserver = function(_, opts)
        opts.on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end
      end,
    },
  },
}
