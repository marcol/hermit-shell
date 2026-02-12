require("nvchad.configs.lspconfig").defaults()

local servers = {
  "arduino-language-server",
  "autotools-language-server",
  "bash-language-server",
  "cssls",
  "docker-language-server",
  "emmet-ls",
  "eslint",
  "html",
  "marksman",
  "pyright",
  "tailwindcss",
  "vue_ls"
}

vim.lsp.enable(servers)

-- to configure lsps further read :h vim.lsp.config
vim.lsp.config('pyright', {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "openFilesOnly",
          useLibraryCodeForTypes = true
        }
      }
    }
})

vim.lsp.config('arduino-language-server', {})
vim.lsp.config('autotools-language-server', {})
vim.lsp.config('bash-language-server', {})
vim.lsp.config('docker-language-server', {})
vim.lsp.config('emmet-ls', {})

