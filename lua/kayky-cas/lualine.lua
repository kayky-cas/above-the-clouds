require('lualine').setup {
    options = {
        theme = 'dracula-nvim',

        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },

    sections = {
        lualine_x = { 'filetype' },
    }
}
