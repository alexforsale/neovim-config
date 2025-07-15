return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()

      -- appearance
      require('mini.icons').setup()
      require('mini.animate').setup()
      require('mini.cursorword').setup()
      require('mini.hipatterns').setup {
        highlighters = {},
      }
      require('mini.tabline').setup {
        show_icons = true,
      }
      require('mini.trailspace').setup()
      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      -- local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      -- statusline.setup { use_icons = true }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      --@diagnostic disable-next-line: duplicate-set-field
      -- statusline.section_location = function()
      -- return '%2l:%-2v'
      -- end

      -- Editing
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }
      -- Commenting with 'gcc'
      require('mini.comment').setup()
      -- require('mini.completion').setup()
      -- local gen_loader = require('mini.snippets').gen_loader
      -- require('mini.snippets').setup({
      --   snippets = {
      --     -- Load custom file with global snippets first (adjust for Windows)
      --     gen_loader.from_file('~/.config/nvim/snippets/global.json'),
      --     -- Load snippets based on current language by reading files from
      --     -- "snippets/" subdirectories from 'runtimepath' directories.
      --     gen_loader.from_lang(),
      --   },
      -- })
      -- mini-keymap
      local map_multistep = require('mini.keymap').map_multistep

      map_multistep('i', '<Tab>',   { 'pmenu_next' })
      map_multistep('i', '<S-Tab>', { 'pmenu_prev' })
      map_multistep('i', '<CR>',    { 'pmenu_accept', 'minipairs_cr' })
      map_multistep('i', '<BS>',    { 'minipairs_bs' })
      require('mini.move').setup()
      require('mini.pairs').setup()
      require('mini.move').setup()
      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- General
      require('mini.basics').setup()
      require('mini.bracketed').setup()
      require('mini.extra').setup()
      require('mini.jump').setup()
    end,
  }
}
