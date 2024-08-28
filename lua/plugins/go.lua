return {
  -- Customize gopls
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
  -- Customize Go-related tools
  {
    "ray-x/go.nvim",
    opts = {
      lsp_cfg = false, -- we use the lspconfig setup
      lsp_gofumpt = true,
      lsp_on_attach = function(client, bufnr)
        -- Disable formatting from gopls, we'll use gofumpt
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
      gofmt = "gofumpt",
      max_line_len = 120,
      tag_transform = false,
      test_dir = "",
      comment_placeholder = "",
      icons = { breakpoint = "🧘", currentpos = "🏃" },
      -- ... other options
    },
  },
  -- Customize formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "gofumpt", "goimports-reviser", "golines" },
      },
      formatters = {
        goimports_reviser = {
          prepend_args = { "-rm-unused" },
        },
        golines = {
          prepend_args = { "--max-len=120" },
        },
      },
    },
  },
}