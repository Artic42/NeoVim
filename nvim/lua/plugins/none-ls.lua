return {
    "nvimtools/none-ls.nvim",
    config = function ()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.completion.spell,
                null_ls.builtins.diagnostics.flake8,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.yamlfmt,
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
