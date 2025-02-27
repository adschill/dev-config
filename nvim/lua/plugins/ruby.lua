return {
  { "tpope/vim-rails" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      require("lspconfig")["ruby-lsp"].setup({
        before_init = function(params)
          params.processId = vim.NIL
        end,
        cmd = {
          "docker",
          "run",
          "-i",
          "--rm",
          "-v",
          "/local/path/to/project:/container/path/to/project",
          "your_project_image:your_project_tag",
          "pylsp",
        },
      }),
    },
  },
}
