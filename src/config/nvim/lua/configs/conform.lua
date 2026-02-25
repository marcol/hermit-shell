local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier", stop_after_first = true },
    json = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "isort", "black" },
    svelte = { "prettier" },
    typescript = { "prettier" },
    yaml = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  }
}

return options
