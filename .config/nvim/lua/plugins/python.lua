return {
  -- Formatter: ruff format + import sorting, on save (LazyVim already loads conform.nvim)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_organize_imports" },
      },
    },
  },

  -- Linter: ruff (LazyVim already loads nvim-lint and wires the lint autocmds)
  --
  -- mypy is defined here too, but deliberately left out of `linters_by_ft` --
  -- it's real type checking (much slower than ruff) and is only triggered on
  -- save via the BufWritePost autocmd in config/autocmds.lua, not on every
  -- InsertLeave. Only active in projects that have a local .venv (condition),
  -- using that venv's mypy binary (cmd resolved per-buffer by walking up from
  -- the file). ruff doesn't do import-resolution / type checking, so this is
  -- what catches "imports correct, no syntax errors" on save. --follow-imports=silent
  -- keeps errors scoped to the saved file, not every file it happens to import.
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "ruff" },
      },
      linters = {
        mypy = {
          condition = function(ctx)
            return #vim.fs.find(".venv", { path = ctx.dirname, upward = true, type = "directory" }) > 0
          end,
          cmd = function()
            local dir = vim.fn.expand("%:p:h")
            local venv = vim.fs.find(".venv", { path = dir, upward = true, type = "directory" })[1]
            local bin = venv and (venv .. "/bin/mypy")
            if bin and vim.uv.fs_stat(bin) then
              return bin
            end
            return "mypy"
          end,
          prepend_args = { "--ignore-missing-imports", "--follow-imports=silent" },
        },
      },
    },
  },
}
