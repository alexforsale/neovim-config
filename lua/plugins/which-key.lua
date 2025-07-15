return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    spec = {
      { "<BS>", desc = "Decrement Selection", mode = "x" },
      { "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
    },
  },
}
