return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { 
    signs = false,
    keywords = {
      FIX = {
	icon = " ",
	color = "error",
	alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
      },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    },
    keys = {
      { "]t", "<cmd>lua require('todo-commments').jump_next()<CR>", mode = { "n", "o" } },
      { "[t", "<cmd>lua require('todo-commments').jump_prev()<CR>", mode = { "n", "o" } },
    },
  },
}
