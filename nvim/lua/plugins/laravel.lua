return {
    "adalessa/laravel.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-neotest/nvim-nio",
    },
    ft = { "php", "blade" },
    event = { "BufEnter composer.json" },
    cmd = { "Laravel" },
    keys = {
        {
            "<leader>ll",
            function()
                Laravel.pickers.laravel()
            end,
            desc = "Laravel Picker",
        },
        {
            "<leader>la",
            function()
                Laravel.pickers.artisan()
            end,
            desc = "Artisan",
        },
        {
            "<leader>lr",
            function()
                Laravel.pickers.routes()
            end,
            desc = "Routes",
        },
        {
            "<leader>lm",
            function()
                Laravel.pickers.make()
            end,
            desc = "Make",
        },
        {
            "<leader>lo",
            function()
                Laravel.pickers.resources()
            end,
            desc = "Resources",
        },
        {
            "gf",
            function()
                local ok, res = pcall(function()
                    if Laravel.app("gf").cursorOnResource() then
                        return "<cmd>lua Laravel.commands.run('gf')<cr>"
                    end
                end)
                return ok and res or "gf"
            end,
            expr = true,
            noremap = true,
            desc = "Go to file (Laravel aware)",
        },
    },
    opts = {
        environments = {
            ask_on_boot = true,
        },
        features = {
            pickers = {
                provider = "snacks",
            },
        },
    },
}
