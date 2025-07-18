return {
    {
      "nvim-neo-tree/neo-tree.nvim",
      lazy = false, -- neo-tree will lazily load itself
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- Optional image support for file preview: See `# Preview Mode` for more information.
        -- {"3rd/image.nvim", opts = {}},
        -- OR use snacks.nvim's image module:
        "folke/snacks.nvim",
      },
      config = function()
        vim.keymap.set("n", "<leader>ee", "<Cmd>Neotree reveal<CR>")
        require("neo-tree").setup({
          close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tabj
        })
      end
    },
      "s1n7ax/nvim-window-picker", -- for open_with_window_picker keymaps
      config = function()
        require("window-picker").setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { "neo-tree", "neo-tree-popup", "notify" },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { "terminal", "quickfix" },
            },
          },
        })
      end,
}
