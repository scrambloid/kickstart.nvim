-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  --{
  --  'nvimdev/dashboard-nvim',
  --  event = 'VimEnter',
  --  config = function()
  --    require('dashboard').setup {
  --      theme = 'hyper',
  --    }
  --  end,
  --  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  --},
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {},
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/notes',
              },
              default_workspace = 'notes',
            },
          },
        },
      }

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'oasis',
          globalstatus = true,
        },
        tabline = {
          lualine_a = { 'tabs' },
          lualine_b = { 'filename' },
          lualine_c = { 'branch' },
          lualine_x = { 'lsp_status' },
          lualine_y = {},
          lualine_z = {
            {
              'buffers',
              max_length = vim.o.columns * 1 / 3,
            },
          },
        },
      }
    end,
  },

  --{
  --  'romgrk/barbar.nvim',
  --  dependencies = { 'nvim-tree/nvim-web-devicons' },
  --  init = function()
  --    vim.g.barbar_auto_setup = false
  --  end,
  --  opts = {},
  --},
}
