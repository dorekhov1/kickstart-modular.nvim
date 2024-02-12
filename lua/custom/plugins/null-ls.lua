return {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
        local null_ls = require("null-ls")
        require('null-ls').setup({
            sources = {
                null_ls.builtins.diagnostics.mypy,
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
            }
        })
    end
}
