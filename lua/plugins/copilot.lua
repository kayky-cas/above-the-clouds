return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            panel = {
                keymap = {
                    accept = "<C-d>"
                }
            }
        })
    end,
}
