local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup {
    capabilities = capabilities,
    cmd = {
        "rustup", "run", "stable", "rust-analyzer"
    }
}

nvim_lsp.denols.setup {
    root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
}
nvim_lsp.prismals.setup{}
nvim_lsp.tsserver.setup {
    root_dir = nvim_lsp.util.root_pattern("package.json"),
}

nvim_lsp.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-s>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})

require 'lspconfig'.clangd.setup {}
