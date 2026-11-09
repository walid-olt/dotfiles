return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        filetypes = {
          "html",
          "javascript",
          "typescript",
          "react",
          "vue",
          "svelte",
          "rust",
          "heex",
          "elixir",
        },
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 8192,
              },
            },
            vtsls = {
              watchFiles = {
                -- Exclude .next and node_modules from file watching
                exclude = { "**/node_modules/**", "**/.next/**", "**/dist/**" },
              },
            },
          },
        },
      },
    },
  },
}
