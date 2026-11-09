return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {

    timeout_ms = 5000,
    formatters_by_ft = {
      c = { "c_formatter_42" },
      h = { "c_formatter_42" },
      cpp = { "c_formatter_42" },
      hpp = { "c_formatter_42" },
    },
    formatters = {
      {
        prettier = {
          command = "pnpm",
          args = { "dlx", "prettier", "--stdin-filepath", "$FILENAME" },
        },
      },
      c_formatter_42 = {
        command = "c_formatter_42",
        -- c_formatter_42 modifies files in-place or reads from stdin
        args = { "$FILENAME" },
        stdin = false,
      },
    },
  },
}
