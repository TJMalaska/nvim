return {
  --kanagawa
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'wave', -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }
      vim.cmd.colorscheme 'kanagawa'
    end,
  },
  -- vague
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- transparent = true
      }
      vim.cmd 'colorscheme vague'
      --      vim.cmd ':hi statusline guibg=NONE'
    end,
  },
  --  rose pine
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      --      vim.cmd 'colorscheme rose-pine'
    end,
  },
  -- gruvbox
  {
    'morhetz/gruvbox',
    config = function()
      vim.g.gruvbox_contrast_dark = 'medium'
      --vim.cmd 'colorscheme gruvbox'
    end,
  },
  -- jelly bean
  {
    'nanotech/jellybeans.vim',
    config = function()
      --vim.cmd 'colorscheme jellybeans'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
