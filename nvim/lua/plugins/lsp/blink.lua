return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        { "saghen/blink.compat", version = "2.*", lazy = true, opts = {} },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = { preset = "super-tab" },
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            documentation = { auto_show = false },
            menu = {
                auto_show = function(ctx)
                    return ctx.mode ~= "default"
                end,
            },
        },
        sources = {
            default = { "lazydev", "lsp", "path", "snippets", "buffer", "laravel" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100,
                },
                laravel = {
                    name = "Laravel",
                    module = "blink.compat.source",
                    score_offset = 95,
                },
            },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
