  local options = {
  formatters_by_ft = {
    javascript      = { "prettier" },
    typescript      = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css             = { "prettier" },
    html            = { "prettier" },
    json            = { "prettier" },
    yaml            = { "prettier" },
    markdown        = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
