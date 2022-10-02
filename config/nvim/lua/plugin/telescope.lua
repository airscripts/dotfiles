local telescope = require('telescope')

telescope.setup {
	defaults = {
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--hidden',
    },
	},

	pickers = {
    find_files = {
      hidden = true
    },
  }
}

