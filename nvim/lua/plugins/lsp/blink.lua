return {
    "saghen/blink.cmp",
    version = "1.*",
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
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100,
                },
            },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
