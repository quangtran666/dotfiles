return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                gdscript = { "gdscript_formatter" },
                lua = { "stylua" },
                php = { lsp_format = "fallback" },
            },
            formatters = {
                gdscript_formatter = {
                    command = "gdscript-formatter",
                    stdin = true,
                },
            },
            format_on_save = {
                timeout_ms = 1000,
                lsp_fallback = false,
            },
        })

        vim.keymap.set("n", "<leader>f", function()
            require("conform").format({ async = true })
        end, { desc = "Format buffer" })
    end,
}
