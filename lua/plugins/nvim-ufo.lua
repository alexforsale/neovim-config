return {
{
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = { "kevinhwang91/promise-async" },

    init = function()
      -- VS Code style behaviors
      vim.o.foldcolumn = "1"     -- shows fold markers like VSCode gutter
      vim.o.foldlevel = 99       -- open everything by default
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,

    opts = {
      provider_selector = function(bufnr, filetype, buftype)
        return { "lsp", "treesitter", "indent" }
      end,

      -- VSCode-style folded preview
      open_fold_hl_timeout = 150,
      close_fold_kinds_for_ft = { "imports" },
    },

    keys = {
      { "zR", function() require("ufo").openAllFolds() end, desc = "Open all folds" },
      { "zM", function() require("ufo").closeAllFolds() end, desc = "Close all folds" },
      { "zr", function() require("ufo").openFoldsExceptKinds() end, desc = "Open folds except kinds" },
      { "zm", function() require("ufo").closeFoldsWith() end, desc = "Close folds with kinds" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      ensure_installed = "all",
    },
  },
}
