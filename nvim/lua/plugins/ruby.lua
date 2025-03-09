return {
  { "tpope/vim-rails" },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        ruby_lsp = {
          enabled = lsp == "ruby_lsp",
        },
        solargraph = {
          enabled = lsp == "solargraph",
        },
        rubocop = {
          -- If Solargraph and Rubocop are both enabled as an LSP,
          -- diagnostics will be duplicated because Solargraph
          -- already calls Rubocop if it is installed
          enabled = formatter == "rubocop" and lsp ~= "solargraph",
        },
        standardrb = {
          enabled = formatter == "standardrb",
        },
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     require("lspconfig")["ruby-lsp"].setup({
  --       before_init = function(params)
  --         params.processId = vim.NIL
  --       end,
  --       cmd = {
  --         "docker",
  --         "run",
  --         "-i",
  --         "--rm",
  --         "-v",
  --         "/local/path/to/project:/container/path/to/project",
  --         "your_project_image:your_project_tag",
  --         "ruby-lsp",
  --       },
  --     }),
  --   },
  -- },
}
