-- See :help bufferline-settings
require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
	buffer_close_icon = '',
    show_close_icon = false,
  },
  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false
    },
  }
})


