return {
  'shaunsingh/nord.nvim',
  config = function()
    require('lualine').setup { { theme = 'nord'}
  }
  vim.cmd.colorscheme 'nord'
end
}
