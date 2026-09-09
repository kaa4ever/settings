-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- mypy (see lua/plugins/python.lua) is real type checking, much slower than
-- ruff, so it only runs on save -- not on the InsertLeave/BufReadPost events
-- LazyVim's built-in nvim-lint dispatcher uses for every linter -- to avoid
-- lagging normal editing.
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  group = vim.api.nvim_create_augroup("mypy_on_save", { clear = true }),
  callback = function(args)
    local ok, lint = pcall(require, "lint")
    if not ok then
      return
    end
    local linter = lint.linters.mypy
    if not linter then
      return
    end
    local ctx = { filename = args.file, dirname = vim.fn.fnamemodify(args.file, ":h") }
    if linter.condition and not linter.condition(ctx) then
      return
    end
    lint.try_lint({ "mypy" })
  end,
})
