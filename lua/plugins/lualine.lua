return {
  'nvim-lualine/lualine.nvim',
  config = function ()
    local gruvbox = require('lualine.themes.gruvbox')
    gruvbox.normal.c.bg = '#000000'
    require('lualine').setup({
      options = {
        theme = 'gruvbox'
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
      },
    })
  end
}
