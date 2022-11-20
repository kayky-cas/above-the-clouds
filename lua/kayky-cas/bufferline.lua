vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        diagnostics = "nvim_lsp";
        close_icon = "",
        buffer_close_icon = '',
        indicator = {
            icon = '▎',
        },
    }
}
