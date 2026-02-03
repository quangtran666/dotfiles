return {
    "cbochs/grapple.nvim",
    opts = {
        scope = "git",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "Grapple" },
    keys = {
        { "<leader>m", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
        { "<leader>M", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
    },
}
